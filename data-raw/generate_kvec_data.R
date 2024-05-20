jouyou <- kbase$kanji[kbase$grade <= 8]
length(jouyou) == 2136
kvecjoyo <- vector("list", 2136)
for (i in 1:2136) {
  cat(i, ", ", sep="")
  kvecjoyo[[i]] <- kanjivec(jouyou[i], database="../../kanjivg-master/kanji-main_2023", flatten="intelligent")
  # problematic were 187, 475, 1111
  # they currently run through but (our interpretation of) their decomposition is inherently a bit weird
}
# save(kvecjinmei, file="../data/kvecjoyo.rda", compress="xz")

jinmeiyou <- kbase$kanji[kbase$class == "jinmeiyou"]
length(jinmeiyou) == 863
kvecjinmei <- vector("list", 863)
for (i in 1:863) {
  cat(i, ", ", sep="")
  kvecjinmei[[i]] <- tryCatch( kanjivec(jinmeiyou[i], database="../../kanjivg-master/kanji-main_2023", 
                                        flatten="intelligent"),
                               error = function(e) { print(e); return(NA) } )
  # 89 current jinmeiyou kanji are not in the 2023 database, indices are
  # [1] 568 573 647 648 649 650 651 683 781 782 783 784 785 786 787 788 789 790 791 792 793 794 795 796 797
  # [26] 798 799 800 801 802 803 804 805 806 807 808 809 812 813 814 815 816 817 818 819 820 821 822 823 824
  # [51] 825 826 827 828 829 830 831 832 833 834 835 836 837 838 839 840 841 842 843 844 845 846 847 848 849
  # [76] 850 851 852 853 854 855 856 857 858 859 860 861 862 863
}
# save(kvecjinmei, file="../data/kvecjinmei.rda", compress="xz")
