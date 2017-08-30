.class public Lcom/weirdvoice/ui/SipHome;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "SipHome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/SipHome$TabsAdapter;,
        Lcom/weirdvoice/ui/SipHome$ViewPagerVisibilityListener;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_MENU:I = 0x2

.field private static final CHANGE_PREFS:I = 0x1

.field public static final CLOSE_MENU:I = 0x4

.field public static final DISTRIB_ACCOUNT_MENU:I = 0x6

.field public static final HELP_MENU:I = 0x5

.field public static final PARAMS_MENU:I = 0x3

.field private static final REQUEST_EDIT_DISTRIBUTION_ACCOUNT:I = 0x0

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x3

.field private static final REQUEST_READ_CONTACTS:I = 0x5

.field private static final REQUEST_READ_PHONE_STATE:I = 0x1

.field private static final REQUEST_RECORD_AUDIO:I = 0x2

.field private static final REQUEST_WRITE_SETTINGS:I = 0x4

.field private static final TAB_ID_CALL_LOG:I = 0x1

.field private static final TAB_ID_DIALER:I = 0x0

.field private static final TAB_ID_FAVORITES:I = 0x2

.field private static final TAB_ID_RATES:I = 0x5

.field private static final THIS_FILE:Ljava/lang/String; = "SIP_HOME"


# instance fields
.field private asyncSanityChecker:Ljava/lang/Thread;

.field private hasTriedOnceActivateAcc:Z

.field private initDialerWithText:Ljava/lang/String;

.field initTabId:Ljava/lang/Integer;

.field private mCallLogFragment:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

.field private mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

.field private mDualPane:Z

.field private mPhoneFavoriteFragment:Lcom/weirdvoice/ui/favorites/FavListFragment;

.field private mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private nbLaunches:I

.field private onForeground:Z

.field private prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 101
    iput v0, p0, Lcom/weirdvoice/ui/SipHome;->nbLaunches:I

    .line 115
    iput-boolean v0, p0, Lcom/weirdvoice/ui/SipHome;->hasTriedOnceActivateAcc:Z

    .line 614
    iput-boolean v0, p0, Lcom/weirdvoice/ui/SipHome;->onForeground:Z

    .line 742
    iput-object v1, p0, Lcom/weirdvoice/ui/SipHome;->initDialerWithText:Ljava/lang/String;

    .line 743
    iput-object v1, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/SipHome;IZ)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/ui/SipHome;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/SipHome;)Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/weirdvoice/ui/SipHome;->mDualPane:Z

    return v0
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/SipHome;)V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/weirdvoice/ui/SipHome;->asyncSanityCheck()V

    return-void
.end method

.method static synthetic access$8(Lcom/weirdvoice/ui/SipHome;)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/weirdvoice/ui/SipHome;->postStartSipService()V

    return-void
.end method

.method private applyTheme()V
    .locals 17

    .prologue
    .line 664
    invoke-static/range {p0 .. p0}, Lcom/weirdvoice/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/weirdvoice/utils/Theme;

    move-result-object v10

    .line 665
    .local v10, "t":Lcom/weirdvoice/utils/Theme;
    if-eqz v10, :cond_3

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    .line 667
    .local v1, "ab":Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v1, :cond_3

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/SipHome;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v14

    const v15, 0x1020002

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 670
    .local v13, "vg":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 672
    .local v2, "abc":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/weirdvoice/ui/SipHome;->getVisibleLeafs(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    .line 673
    .local v9, "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 674
    .local v6, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4

    .line 722
    if-lez v6, :cond_1

    .line 723
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const-string v15, "abs_background"

    invoke-virtual {v10, v14, v15}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 726
    :cond_1
    const-string v14, "split_background"

    invoke-virtual {v10, v14}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 727
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 728
    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    :cond_2
    const-string v14, "content_background"

    invoke-virtual {v10, v13, v14}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 734
    .end local v1    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .end local v2    # "abc":Landroid/view/ViewGroup;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "i":I
    .end local v9    # "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13    # "vg":Landroid/view/View;
    :cond_3
    return-void

    .line 674
    .restart local v1    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .restart local v2    # "abc":Landroid/view/ViewGroup;
    .restart local v6    # "i":I
    .restart local v9    # "leafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v13    # "vg":Landroid/view/View;
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 675
    .local v8, "leaf":Landroid/view/View;
    instance-of v14, v8, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    invoke-virtual {v14, v6}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->getIdForPosition(I)Ljava/lang/Integer;

    move-result-object v7

    .line 677
    .local v7, "id":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    .line 678
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 679
    .local v11, "tabId":I
    const/4 v3, 0x0

    .line 680
    .local v3, "customIcon":Landroid/graphics/drawable/Drawable;
    packed-switch v11, :pswitch_data_0

    .line 696
    :goto_1
    if-eqz v3, :cond_5

    move-object v14, v8

    .line 697
    check-cast v14, Landroid/widget/ImageView;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 701
    const-string v16, "tab"

    .line 700
    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v0}, Lcom/weirdvoice/utils/Theme;->applyBackgroundStateListSelectableDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 702
    if-nez v6, :cond_7

    .line 703
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 704
    .local v12, "tabLayout":Landroid/view/ViewParent;
    instance-of v14, v12, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_7

    .line 705
    const-string v14, "tab_divider"

    invoke-virtual {v10, v14}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 706
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_6

    .line 707
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v16

    move-object v14, v12

    .line 709
    check-cast v14, Landroid/widget/LinearLayout;

    .line 708
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v4}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setLinearLayoutDividerDrawable(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)V

    .line 711
    :cond_6
    const-string v14, "tab_divider_padding"

    invoke-virtual {v10, v14}, Lcom/weirdvoice/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 712
    .local v5, "dim":Ljava/lang/Integer;
    if-eqz v5, :cond_7

    .line 713
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v14

    .line 714
    check-cast v12, Landroid/widget/LinearLayout;

    .end local v12    # "tabLayout":Landroid/view/ViewParent;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 713
    move/from16 v0, v16

    invoke-virtual {v14, v12, v0}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setLinearLayoutDividerPadding(Landroid/widget/LinearLayout;I)V

    .line 718
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "dim":Ljava/lang/Integer;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 682
    :pswitch_0
    const-string v14, "ic_ab_dialer"

    invoke-virtual {v10, v14}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 683
    goto :goto_1

    .line 685
    :pswitch_1
    const-string v14, "ic_ab_history"

    invoke-virtual {v10, v14}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 686
    goto :goto_1

    .line 691
    :pswitch_2
    const-string v14, "ic_ab_favourites"

    invoke-virtual {v10, v14}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 692
    goto :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private askForHelp()V
    .locals 18

    .prologue
    .line 1093
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1094
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "firstlaunch"

    const-string v14, ""

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1095
    .local v6, "firstlaunch":Ljava/lang/String;
    const-string v13, "askedforhelp"

    const/4 v14, 0x0

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1096
    .local v2, "asked":Ljava/lang/Boolean;
    const-string v13, "simpub"

    const/4 v14, 0x0

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1098
    .local v10, "simpub":Ljava/lang/Boolean;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1100
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, ""

    if-ne v6, v13, :cond_1

    .line 1101
    const-string v13, "firstlaunch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1102
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1107
    .local v11, "time":Ljava/lang/Long;
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1111
    .local v5, "elapsed":Ljava/lang/Long;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/32 v16, 0x15180

    cmp-long v13, v14, v16

    if-lez v13, :cond_0

    .line 1112
    const-string v13, "askedforhelp"

    const/4 v14, 0x1

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1113
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1115
    const-string v13, "username"

    const-string v14, ""

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1116
    .local v12, "username":Ljava/lang/String;
    new-instance v7, Lcom/weirdvoice/ui/HelpMe;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v12}, Lcom/weirdvoice/ui/HelpMe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1117
    .local v7, "helpme":Lcom/weirdvoice/ui/HelpMe;
    invoke-virtual {v7}, Lcom/weirdvoice/ui/HelpMe;->show()V

    goto :goto_0

    .line 1108
    .end local v5    # "elapsed":Ljava/lang/Long;
    .end local v7    # "helpme":Lcom/weirdvoice/ui/HelpMe;
    .end local v12    # "username":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1109
    .local v3, "e":Ljava/lang/Exception;
    const-wide/32 v14, 0x1e13380

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .restart local v5    # "elapsed":Ljava/lang/Long;
    goto :goto_1

    .line 1119
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "elapsed":Ljava/lang/Long;
    .end local v11    # "time":Ljava/lang/Long;
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1121
    :try_start_1
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isSamApp()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1122
    const-string v13, "simpub"

    const/4 v14, 0x1

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1130
    :catch_1
    move-exception v13

    goto :goto_0

    .line 1125
    :cond_3
    const-string v13, "nblaunches"

    const/4 v14, 0x0

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1126
    .local v8, "nbLaunches":I
    const-string v13, "nblaunches"

    add-int/lit8 v14, v8, 0x1

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1127
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method private askPermissions()V
    .locals 4

    .prologue
    .line 1030
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_a

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v0, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1034
    .local v1, "permissionCheck":I
    if-eqz v1, :cond_0

    .line 1035
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    :cond_0
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1039
    if-eqz v1, :cond_1

    .line 1040
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    :cond_1
    const-string v2, "android.permission.CALL_PHONE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1044
    if-eqz v1, :cond_2

    .line 1045
    const-string v2, "android.permission.CALL_PHONE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_2
    const-string v2, "android.permission.USE_SIP"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1049
    if-eqz v1, :cond_3

    .line 1050
    const-string v2, "android.permission.USE_SIP"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_3
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1054
    if-eqz v1, :cond_4

    .line 1055
    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_4
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1060
    if-eqz v1, :cond_5

    .line 1061
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_5
    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1065
    if-eqz v1, :cond_6

    .line 1066
    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_6
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1071
    if-eqz v1, :cond_7

    .line 1072
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_7
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1076
    if-eqz v1, :cond_8

    .line 1077
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_8
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1082
    if-eqz v1, :cond_9

    .line 1083
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1087
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-static {p0, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1090
    .end local v0    # "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "permissionCheck":I
    :cond_a
    return-void
.end method

.method private asyncSanityCheck()V
    .locals 2

    .prologue
    .line 496
    const-string v0, "SIP_HOME"

    const-string v1, "asysanity"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private disconnect(Z)V
    .locals 4
    .param p1, "quit"    # Z

    .prologue
    .line 928
    const-string v1, "SIP_HOME"

    const-string v2, "True disconnection..."

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.ACTION_OUTGOING_UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "outgoing_activity"

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 931
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/SipHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 932
    if-eqz p1, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->finish()V

    .line 935
    :cond_0
    return-void
.end method

.method private getFragmentAt(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 408
    iget-object v1, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    invoke-virtual {v1, p1}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->getIdForPosition(I)Ljava/lang/Integer;

    move-result-object v0

    .line 409
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 417
    :goto_0
    return-object v1

    .line 412
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/weirdvoice/ui/SipHome;->mCallLogFragment:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 417
    iget-object v1, p0, Lcom/weirdvoice/ui/SipHome;->mPhoneFavoriteFragment:Lcom/weirdvoice/ui/favorites/FavListFragment;

    goto :goto_0

    .line 422
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown fragment index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVisibleLeafs(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-object v1

    .line 652
    :cond_1
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    move-object v3, p1

    .line 654
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/SipHome;->getVisibleLeafs(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v2

    .line 655
    .local v2, "subLeafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 659
    .end local v0    # "i":I
    .end local v2    # "subLeafs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private postStartSipService()V
    .locals 14

    .prologue
    const/high16 v13, 0x10000000

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 554
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->showFirstSettingScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v1, "has_already_setup"

    invoke-virtual {v0, v1, v4}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.weirdvoice.ui.action.PREFS_FAST"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v10, "prefsIntent":Landroid/content/Intent;
    invoke-virtual {v10, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0, v10}, Lcom/weirdvoice/ui/SipHome;->startActivity(Landroid/content/Intent;)V

    .line 612
    .end local v10    # "prefsIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v1, "has_already_setup"

    invoke-virtual {v0, v1, v4}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v8, v4

    .line 563
    .local v8, "doFirstParams":Z
    :goto_1
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v1, "has_already_setup"

    invoke-virtual {v0, v1, v12}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 564
    if-eqz v8, :cond_2

    .line 565
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->resetAllDefaultValues()V

    .line 570
    .end local v8    # "doFirstParams":Z
    :cond_2
    iget-boolean v0, p0, Lcom/weirdvoice/ui/SipHome;->hasTriedOnceActivateAcc:Z

    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    .line 573
    const-string v5, "id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 572
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 575
    .local v7, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 576
    .local v6, "accountCount":I
    if-eqz v7, :cond_3

    .line 578
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 582
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    .line 603
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/weirdvoice/ui/Register;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    .local v11, "regIntent":Landroid/content/Intent;
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v11}, Lcom/weirdvoice/ui/SipHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v6    # "accountCount":I
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v11    # "regIntent":Landroid/content/Intent;
    :cond_4
    move v8, v12

    .line 562
    goto :goto_1

    .line 579
    .restart local v6    # "accountCount":I
    .restart local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 580
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP_HOME"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 581
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 582
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 583
    throw v0

    .line 610
    :cond_5
    iput-boolean v12, p0, Lcom/weirdvoice/ui/SipHome;->hasTriedOnceActivateAcc:Z

    goto :goto_0
.end method

.method private selectTabWithAction(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 745
    if-eqz p1, :cond_3

    .line 746
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "callAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 748
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 749
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v6, 0x0

    .line 750
    .local v6, "toSelectTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const/4 v5, 0x0

    .line 751
    .local v5, "toSelectId":Ljava/lang/Integer;
    const-string v7, "com.weirdvoice.phone.action.DIALER"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 752
    const-string v7, "android.intent.action.DIAL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 753
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 754
    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 755
    :cond_0
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    invoke-virtual {v7, v8}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    .line 756
    .local v4, "pos":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 757
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 758
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 759
    .local v2, "data":Landroid/net/Uri;
    invoke-static {p1, p0}, Lcom/weirdvoice/utils/UriUtils;->extractNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, "nbr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 762
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    if-eqz v7, :cond_4

    .line 763
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v7, v9}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setTextDialing(Z)V

    .line 764
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v7, v3}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setTextFieldValue(Ljava/lang/CharSequence;)V

    .line 769
    :cond_1
    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 790
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "nbr":Ljava/lang/String;
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_2
    :goto_1
    if-eqz v6, :cond_7

    .line 791
    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 792
    iput-object v5, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    .line 799
    .end local v0    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .end local v1    # "callAction":Ljava/lang/String;
    .end local v5    # "toSelectId":Ljava/lang/Integer;
    .end local v6    # "toSelectTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    :cond_3
    :goto_2
    return-void

    .line 766
    .restart local v0    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    .restart local v1    # "callAction":Ljava/lang/String;
    .restart local v2    # "data":Landroid/net/Uri;
    .restart local v3    # "nbr":Ljava/lang/String;
    .restart local v4    # "pos":Ljava/lang/Integer;
    .restart local v5    # "toSelectId":Ljava/lang/Integer;
    .restart local v6    # "toSelectTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    :cond_4
    iput-object v3, p0, Lcom/weirdvoice/ui/SipHome;->initDialerWithText:Ljava/lang/String;

    goto :goto_0

    .line 771
    .end local v2    # "data":Landroid/net/Uri;
    .end local v3    # "nbr":Ljava/lang/String;
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_5
    const-string v7, "com.weirdvoice.phone.action.CALLLOG"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 772
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    invoke-virtual {v7, v9}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    .line 773
    .restart local v4    # "pos":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 774
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 775
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 777
    goto :goto_1

    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_6
    const-string v7, "com.weirdvoice.phone.action.FAVORITES"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 778
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    invoke-virtual {v7, v10}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->getPositionForId(I)Ljava/lang/Integer;

    move-result-object v4

    .line 779
    .restart local v4    # "pos":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 780
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 781
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 794
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    goto :goto_2
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 434
    :try_start_0
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/SipHome;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 435
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/weirdvoice/ui/SipHome$ViewPagerVisibilityListener;

    if-eqz v2, :cond_0

    .line 436
    check-cast v1, Lcom/weirdvoice/ui/SipHome$ViewPagerVisibilityListener;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v1, p2}, Lcom/weirdvoice/ui/SipHome$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SIP_HOME"

    const-string v3, "Fragment not anymore managed"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSipService()V
    .locals 2

    .prologue
    .line 538
    new-instance v0, Lcom/weirdvoice/ui/SipHome$2;

    const-string v1, "StartSip"

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/ui/SipHome$2;-><init>(Lcom/weirdvoice/ui/SipHome;Ljava/lang/String;)V

    .line 548
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 550
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/SipHome;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 429
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 920
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 921
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.ACTION_SIP_REQUEST_RESTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/SipHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 922
    invoke-static {p0}, Lcom/weirdvoice/utils/backup/BackupWrapper;->getInstance(Landroid/content/Context;)Lcom/weirdvoice/utils/backup/BackupWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weirdvoice/utils/backup/BackupWrapper;->dataChanged()V

    .line 924
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 925
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 449
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 450
    .local v0, "currentPosition":I
    :goto_0
    const/4 v1, 0x0

    .line 451
    .local v1, "tabId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    if-eqz v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    invoke-virtual {v2, v0}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->getIdForPosition(I)Ljava/lang/Integer;

    move-result-object v1

    .line 454
    :cond_0
    instance-of v2, p1, Lcom/weirdvoice/ui/dialpad/DialerFragment;

    if-eqz v2, :cond_4

    .line 455
    check-cast p1, Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 456
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    if-ne v2, v1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v2, v4}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->onVisibilityChanged(Z)V

    .line 458
    iput-object v5, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->initDialerWithText:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 461
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v2, v4}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setTextDialing(Z)V

    .line 462
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mDialpadFragment:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    iget-object v3, p0, Lcom/weirdvoice/ui/SipHome;->initDialerWithText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setTextFieldValue(Ljava/lang/CharSequence;)V

    .line 463
    iput-object v5, p0, Lcom/weirdvoice/ui/SipHome;->initDialerWithText:Ljava/lang/String;

    .line 492
    :cond_2
    :goto_1
    return-void

    .line 449
    .end local v0    # "currentPosition":I
    .end local v1    # "tabId":Ljava/lang/Integer;
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 465
    .restart local v0    # "currentPosition":I
    .restart local v1    # "tabId":Ljava/lang/Integer;
    :cond_4
    instance-of v2, p1, Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    if-eqz v2, :cond_5

    .line 466
    check-cast p1, Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/weirdvoice/ui/SipHome;->mCallLogFragment:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    .line 467
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    if-ne v2, v1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 468
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mCallLogFragment:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    invoke-virtual {v2, v4}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->onVisibilityChanged(Z)V

    .line 469
    iput-object v5, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    goto :goto_1

    .line 477
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_5
    instance-of v2, p1, Lcom/weirdvoice/ui/favorites/FavListFragment;

    if-eqz v2, :cond_2

    .line 478
    check-cast p1, Lcom/weirdvoice/ui/favorites/FavListFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/weirdvoice/ui/SipHome;->mPhoneFavoriteFragment:Lcom/weirdvoice/ui/favorites/FavListFragment;

    .line 479
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    if-ne v2, v1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 480
    iget-object v2, p0, Lcom/weirdvoice/ui/SipHome;->mPhoneFavoriteFragment:Lcom/weirdvoice/ui/favorites/FavListFragment;

    invoke-virtual {v2, v4}, Lcom/weirdvoice/ui/favorites/FavListFragment;->onVisibilityChanged(Z)V

    .line 481
    iput-object v5, p0, Lcom/weirdvoice/ui/SipHome;->initTabId:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 138
    const-string v2, "SIP_HOME"

    const-string v3, "Stop SIP..."

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.weirdvoice.service.ACTION_SIP_CAN_BE_STOPPED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/SipHome;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->finish()V

    .line 142
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->finishAffinity()V

    .line 143
    const-string v2, "SIP_HOME"

    const-string v3, "Exiting..."

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 145
    .local v1, "pid":I
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 146
    const-string v2, "SIP_HOME"

    const-string v3, "Exiting..."

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 153
    new-instance v7, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-direct {v7, p0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 155
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v7, 0x7f03006c

    invoke-virtual {p0, v7}, Lcom/weirdvoice/ui/SipHome;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 160
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 161
    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 162
    invoke-virtual {v0, v11}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 169
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 170
    const v8, 0x7f0c0209

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 171
    const v8, 0x7f02017c

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 172
    .local v2, "dialerTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 173
    const v8, 0x7f0c020a

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 174
    const v8, 0x7f02017f

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 178
    .local v1, "callLogTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const/4 v4, 0x0

    .line 179
    .local v4, "favoritesTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->supportFavorites()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 181
    const v8, 0x7f0c020c

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 182
    const v8, 0x7f02017e

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v4

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/weirdvoice/ui/SipHome;->mDualPane:Z

    .line 199
    const v7, 0x7f0b0081

    invoke-virtual {p0, v7}, Lcom/weirdvoice/ui/SipHome;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 200
    new-instance v7, Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/weirdvoice/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v7, p0, p0, v8, v9}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;-><init>(Lcom/weirdvoice/ui/SipHome;Landroid/support/v4/app/FragmentActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V

    iput-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    .line 201
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    const-class v8, Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v7, v2, v8, v10}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 202
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    const-class v8, Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v8, v9}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 205
    if-eqz v4, :cond_1

    .line 206
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->mTabsAdapter:Lcom/weirdvoice/ui/SipHome$TabsAdapter;

    const-class v8, Lcom/weirdvoice/ui/favorites/FavListFragment;

    invoke-virtual {v7, v4, v8, v11}, Lcom/weirdvoice/ui/SipHome$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V

    .line 213
    :cond_1
    iput-boolean v10, p0, Lcom/weirdvoice/ui/SipHome;->hasTriedOnceActivateAcc:Z

    .line 216
    :try_start_0
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v8, "prevent_screen_rotation"

    invoke-virtual {v7, v8}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 217
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/weirdvoice/ui/SipHome;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/weirdvoice/ui/SipHome;->selectTabWithAction(Landroid/content/Intent;)V

    .line 222
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getLogLevel()I

    move-result v7

    invoke-static {v7}, Lcom/weirdvoice/utils/Log;->setLogLevel(I)V

    .line 224
    invoke-direct {p0}, Lcom/weirdvoice/ui/SipHome;->askForHelp()V

    .line 225
    invoke-direct {p0}, Lcom/weirdvoice/ui/SipHome;->askPermissions()V

    .line 228
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 229
    .local v5, "nbl":Landroid/content/SharedPreferences;
    const-string v7, "tribapp_nb_launches"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/weirdvoice/ui/SipHome;->nbLaunches:I

    .line 230
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 232
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    iget v7, p0, Lcom/weirdvoice/ui/SipHome;->nbLaunches:I

    add-int/lit8 v6, v7, 0x1

    .line 233
    .local v6, "nbstart":I
    const-string v7, "tribapp_nb_launches"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    const-string v7, "SIP_HOME"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "launch #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v7, Lcom/weirdvoice/ui/SipHome$1;

    invoke-direct {v7, p0}, Lcom/weirdvoice/ui/SipHome$1;-><init>(Lcom/weirdvoice/ui/SipHome;)V

    iput-object v7, p0, Lcom/weirdvoice/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    .line 243
    iget-object v7, p0, Lcom/weirdvoice/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 245
    return-void

    .line 219
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "nbl":Landroid/content/SharedPreferences;
    .end local v6    # "nbstart":I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 842
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/SipHome;->disconnect(Z)V

    .line 804
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 805
    const-string v0, "SIP_HOME"

    const-string v1, "---DESTROY SIP HOME END---"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 738
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 739
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/SipHome;->selectTabWithAction(Landroid/content/Intent;)V

    .line 740
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 847
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 914
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 849
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weirdvoice/ui/account/AccountsEditList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/SipHome;->startActivity(Landroid/content/Intent;)V

    move v0, v12

    .line 850
    goto :goto_0

    .line 852
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.ui.action.PREFS_GLOBAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v12}, Lcom/weirdvoice/ui/SipHome;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v12

    .line 853
    goto :goto_0

    .line 855
    :pswitch_2
    const-string v0, "SIP_HOME"

    const-string v1, "CLOSE"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v1, "has_been_quit"

    invoke-virtual {v0, v1, v12}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 869
    invoke-direct {p0, v12}, Lcom/weirdvoice/ui/SipHome;->disconnect(Z)V

    move v0, v12

    .line 877
    goto :goto_0

    .line 880
    :pswitch_3
    invoke-static {}, Lcom/weirdvoice/ui/help/Help;->newInstance()Lcom/weirdvoice/ui/help/Help;

    move-result-object v11

    .line 881
    .local v11, "newFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    move v0, v12

    .line 882
    goto :goto_0

    .line 884
    .end local v11    # "newFragment":Landroid/support/v4/app/DialogFragment;
    :pswitch_4
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getCustomDistributionWizard()Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    move-result-object v8

    .line 886
    .local v8, "distribWizard":Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/SipHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    .line 887
    const-string v3, "id"

    aput-object v3, v2, v13

    .line 888
    const-string v3, "wizard=?"

    new-array v4, v12, [Ljava/lang/String;

    .line 889
    iget-object v5, v8, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    aput-object v5, v4, v13

    .line 890
    const/4 v5, 0x0

    .line 886
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 892
    .local v7, "c":Landroid/database/Cursor;
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 893
    .local v10, "it":Landroid/content/Intent;
    const-string v0, "wizard"

    iget-object v1, v8, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const/4 v6, 0x0

    .line 895
    .local v6, "accountId":Ljava/lang/Long;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 897
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 898
    const-string v0, "id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 902
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 905
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 906
    const-string v0, "id"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 908
    :cond_1
    invoke-virtual {p0, v10, v13}, Lcom/weirdvoice/ui/SipHome;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v12

    .line 910
    goto/16 :goto_0

    .line 899
    :catch_0
    move-exception v9

    .line 900
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP_HOME"

    const-string v1, "Error while getting wizard"

    invoke-static {v0, v1, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 901
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 902
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 903
    throw v0

    .line 847
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 618
    const-string v0, "SIP_HOME"

    const-string v1, "On Pause SIPHOME"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/SipHome;->onForeground:Z

    .line 620
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/SipHome;->asyncSanityChecker:Ljava/lang/Thread;

    .line 626
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 628
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1008
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    goto :goto_0

    .line 1014
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    goto :goto_0

    .line 1019
    :pswitch_2
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 632
    const-string v0, "SIP_HOME"

    const-string v1, "On Resume SIPHOME"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 634
    iput-boolean v3, p0, Lcom/weirdvoice/ui/SipHome;->onForeground:Z

    .line 636
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v1, "has_been_quit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 639
    iget-object v0, p0, Lcom/weirdvoice/ui/SipHome;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/weirdvoice/ui/SipHome;->sendFragmentVisibilityChange(IZ)V

    .line 641
    const-string v0, "SIP_HOME"

    const-string v1, "WE CAN NOW start SIP service"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-direct {p0}, Lcom/weirdvoice/ui/SipHome;->startSipService()V

    .line 644
    invoke-direct {p0}, Lcom/weirdvoice/ui/SipHome;->applyTheme()V

    .line 645
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
