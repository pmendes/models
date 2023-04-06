#!/usr/bin/python3
#
# plot statistics of the parameter distributions
# for single stable and multi stable sets

import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import matplotlib.lines as mline

# load the TSV file through pandas
dataset = pd.read_table('MultistabilitySampling1_parameters.tsv', skip_blank_lines=True)

# Context for the plots
sns.set(rc={"figure.dpi":300, 'savefig.dpi':300, 'figure.figsize':(3.33,3.33)})
sns.set_theme(style="white", palette="colorblind")
sns.set_context('paper')

# Fig.5 is a joint distribution of the two most affected parameters
f1 = sns.JointGrid(data=dataset, x="kappa_CNptc", y="kappa_CNen", height=3.33, hue="class")
# create objects for the key
blue_marker = mline.Line2D([],[],marker='o', ls='none', color=(0.00392156862745098, 0.45098039215686275, 0.6980392156862745), label='single ss')
orange_marker = mline.Line2D([],[],marker='o', ls='none', color=(0.8705882352941177, 0.5607843137254902, 0.0196078431372549), label='multiple ss')
# generate the scatterplot
f1 = f1.plot_joint(sns.scatterplot, hue="class", legend=False, s=8)
# add the key below the X axis
f1.fig.get_axes()[0].legend(handles=[blue_marker, orange_marker], loc='lower center', ncol=2, bbox_to_anchor=(0.5, -0.35),  frameon=False, markerscale=0.6)
# histogram for the horizontal parameter
sns.histplot(dataset, x='kappa_CNptc', hue='class', stat='density', bins=25, common_norm=False, legend=False, log_scale=True, ax=f1.ax_marg_x)
# histogram for the vertical parameter
sns.histplot(dataset, y='kappa_CIptc', hue='class', stat='density', bins=25, common_norm=False, legend=False, log_scale=True, ax=f1.ax_marg_y)

f1.savefig('Fig5.png')
f1.savefig('Fig5.pdf')

sns.set(rc={"figure.dpi":300, 'savefig.dpi':300, 'figure.figsize':(8.5,8.5)})
sns.set_theme(style="white", palette="colorblind")
sns.set_context('paper')

# create an array of distributions
f2, axs = plt.subplots(4, 4,  figsize=(8.5, 8.5))

sns.histplot(ax=axs[0,0], data=dataset, x="HH_0", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[0,1], data=dataset, x="PTC_0", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[0,2], data=dataset, x="C_CI", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[0,3], data=dataset, x="H_CI", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,0], data=dataset, x="H_EN", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,1], data=dataset, x="H_EWG", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,2], data=dataset, x="H_IWG", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,3], data=dataset, x="H_HH", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[2,0], data=dataset, x="H_PTC", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[2,1], data=dataset, x="H_PH", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[2,2], data=dataset, x="H_ci", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[2,3], data=dataset, x="H_en", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[3,0], data=dataset, x="H_hh", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[3,1], data=dataset, x="H_ptc", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[3,2], data=dataset, x="H_wg", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[3,3], data=dataset, x="alpha_CIwg", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

f2.tight_layout()
f2.savefig('FigS1.png')

# create an array of distributions
f3, axs = plt.subplots(4, 4,  figsize=(8.5, 8.5))

sns.histplot(ax=axs[0,0], data=dataset, x="alpha_WGwg", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[0,1], data=dataset, x="kappa_Bci", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[0,2], data=dataset, x="kappa_CIptc", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[0,3], data=dataset, x="kappa_CIwg", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[1,0], data=dataset, x="kappa_CNen", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[1,1], data=dataset, x="kappa_CNhh", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[1,2], data=dataset, x="kappa_CNptc", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[1,3], data=dataset, x="kappa_CNwg", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[2,0], data=dataset, x="kappa_ENci", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[2,1], data=dataset, x="kappa_ENhh", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[2,2], data=dataset, x="kappa_PTCCI", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[2,3], data=dataset, x="kappa_PTCHH", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[3,0], data=dataset, x="kappa_WGen", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[3,1], data=dataset, x="kappa_WGwg", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[3,2], data=dataset, x="nu_Bci", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[3,3], data=dataset, x="nu_CIptc", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

f3.tight_layout()
f3.savefig('FigS2.png')

# create an array of distributions
f4, axs = plt.subplots(4, 4,  figsize=(8.5, 8.5))

sns.histplot(ax=axs[0,0], data=dataset, x="nu_CIwg", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[0,1], data=dataset, x="nu_CNen", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[0,2], data=dataset, x="nu_CNhh", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[0,3], data=dataset, x="nu_CNptc", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,0], data=dataset, x="nu_CNwg", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,1], data=dataset, x="nu_ENci", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,2], data=dataset, x="nu_ENhh", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[1,3], data=dataset, x="nu_PTCCI", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[2,0], data=dataset, x="nu_WGen", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[2,1], data=dataset, x="nu_WGwg", element='step', hue='class', stat='density', common_norm=False, log_scale=False, bins = 20, legend=False)

sns.histplot(ax=axs[2,2], data=dataset, x="r_EndoWG", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[2,3], data=dataset, x="r_ExoWG", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[3,0], data=dataset, x="r_LMxferHH", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[3,1], data=dataset, x="r_LMxferPTC", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[3,2], data=dataset, x="r_LMxferWG", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

sns.histplot(ax=axs[3,3], data=dataset, x="r_MxferWG", element='step', hue='class', stat='density', common_norm=False, log_scale=True, bins = 20, legend=False)

f4.tight_layout()
f4.savefig('FigS3.png')

