/* Copyright (C) 2014 - 2015  James Balamuta, Stephane Guerrier, Roberto Molinari
 *
 * This file is part of GMWM R Methods Package
 *
 * The `gmwm` R package is free software: you can redistribute it and/or modify it
 * under the terms of the Q Public License included within the packages source
 * as the LICENSE file.
 *
 * The `gmwm` R package is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * You should have received a copy of the Q Public License
 * along with `gmwm`.  If not, see <http://www.smac-group.com/licensing/>.
 * 
 */
#ifndef WAVE_VARIANCE
#define WAVE_VARIANCE

arma::mat ci_eta3(arma::vec y,  arma::vec dims, double alpha_ov_2);

arma::mat ci_eta3_robust(arma::vec wv_robust, arma::mat wv_ci_class, double alpha_ov_2, double eff);

arma::mat ci_wave_variance(const arma::field<arma::vec>& signal_modwt_bw, const arma::vec& wv, 
                            std::string type, double alpha_ov_2, bool robust, double eff);
 
arma::vec wave_variance(const arma::field<arma::vec>& signal_modwt_bw,
                        bool robust, double eff);

arma::mat wvar_cpp(const arma::field<arma::vec>& signal_modwt, 
                   bool robust, double eff, double alpha, 
                   std::string ci_type, std::string strWavelet);

arma::vec scales_cpp(unsigned int nb_level);

#endif
