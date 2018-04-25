package com.login.negocio;

public class Facade {

	public LoginABM getLoginABM() {
		return new LoginABM();
	}
	
	public TiposABM getTiposABM() {
		return new TiposABM();
	}
	
	public UsuarioABM getUsuarioABM() {
		return new UsuarioABM();
	}

//	public CuotaABM getCuotaABM() {
//		return new CuotaABM();
//	}
}