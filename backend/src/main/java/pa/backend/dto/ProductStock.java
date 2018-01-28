package pa.backend.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ProductStock {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private int XS;
	private int S;
	private int M;
	private int L;
	private int XL;
	private int XXL;
	private boolean ENABLED;

	public boolean isENABLED() {
		return ENABLED;
	}

	public void setENABLED(boolean eNABLED) {
		ENABLED = eNABLED;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getXS() {
		return XS;
	}

	public void setXS(int xS) {
		XS = xS;
	}

	public int getS() {
		return S;
	}

	public void setS(int s) {
		S = s;
	}

	public int getM() {
		return M;
	}

	public void setM(int m) {
		M = m;
	}

	public int getL() {
		return L;
	}

	public void setL(int l) {
		L = l;
	}

	public int getXL() {
		return XL;
	}

	public void setXL(int xL) {
		XL = xL;
	}

	public int getXXL() {
		return XXL;
	}

	public void setXXL(int xXL) {
		XXL = xXL;
	}

	@Override
	public String toString() {
		return "productStock [id=" + id +", XS=" + XS + ", S=" + S + ", M=" + M + ", L="
				+ L + ", XL=" + XL + ", XXL=" + XXL + ", ENABLED=" + ENABLED + "]";
	}
}
