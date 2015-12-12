#include "common.h"
#include "swm.h"

PetscErrorCode swm::fineGrain(CVec Coords, CVec coordsPrev, DmsBase& Dbase, std::fstream& fpLog)
{
	/* Finegraining method: r = r_prev + U * (\phi - \phi_prev) + \sigma
	 * \sigma is just the residuals vector, which we can compute iteratively but
	 * for simplicity is taken to be zero here.
	 */
	PetscFunctionBegin;
	PetscErrorCode ierr;

	fpLog << Dbase.getTime() << ":INFO:Recovering microstate" << std::endl;

	Mat* mesoMicroMap = Dbase.getMesoMicro();

	std::vector<PetscScalar> com = Dbase.compCentOfMass(Dbase.Microscopic->Get_Coords());

	Vec deltaPhi;
	ierr = VecCreateSeq(Dbase.getComm(), Dbase.Mesoscopic->Get_DOF(), &deltaPhi);
	CHKERRQ(ierr);

	PetscInt nrows, ncols;
	MatGetSize(*mesoMicroMap, &nrows, &ncols);

	for(auto dim = 0; dim < Dbase.Microscopic->Get_Dim(); dim++) {

		ierr = VecCopy(Coords[dim], deltaPhi);
		CHKERRQ(ierr);

		ierr = VecAXPY(deltaPhi, -1.0, coordsPrev[dim]);
		CHKERRQ(ierr);

		ierr = MatMultAdd(*mesoMicroMap, deltaPhi, Dbase.Microscopic->Get_pCoords()[dim], 
				  Dbase.Microscopic->Get_Coords()[dim]);
		CHKERRQ(ierr);
		
	}

	ierr = VecDestroy(&deltaPhi);
	CHKERRQ(ierr);

	PetscFunctionReturn(ierr);
}
