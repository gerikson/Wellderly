package edu.sdsc.wellderly.rules;

import java.io.Serializable;


import javax.persistence.Embeddable;

@Embeddable
public class VCFComplexGroup implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3406974240440761472L;
	private String chrom;
	private int pos;
	private String alt;
	private String gt;
	private String altList1;
	private String altList2;



	public VCFComplexGroup() {
	
	}

	public String getChrom() {
		return chrom;
	}

	public void setChrom(String chrom) {
		this.chrom = chrom;
	}

	public int getPos() {
		return pos;
	}

	public void setPos(int pos) {
		this.pos = pos;
	}

	public String getAlt() {
		return alt;
	}

	public void setAlt(String alt) {
		this.alt = alt;
	}

	public String getAltList1() {
		return altList1;
	}

	public void setAltList1(String altList1) {
		this.altList1 = altList1;
	}


	public String getAltList2() {
		return altList2;
	}

	public void setAltList2(String altList2) {
		this.altList2 = altList2;
	}

	public String getGt() {
		return gt;
	}

	public void setGt(String gt) {
		this.gt = gt;
	}

	@Override
	public int hashCode() {
		return pos;

	}

	@Override
	public boolean equals(Object ob) {
		return false;

	}
}
