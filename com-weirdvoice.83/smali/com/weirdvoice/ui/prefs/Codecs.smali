.class public Lcom/weirdvoice/ui/prefs/Codecs;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "Codecs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "Codecs"


# instance fields
.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private showVideoCodecs:Z

.field private useCodecsPerSpeed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/weirdvoice/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    .line 49
    iput-boolean v0, p0, Lcom/weirdvoice/ui/prefs/Codecs;->showVideoCodecs:Z

    .line 44
    return-void
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/prefs/Codecs;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/weirdvoice/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0c017c

    const v12, 0x7f0c017b

    const/4 v11, 0x1

    const v10, 0x7f0202df

    const v9, 0x7f0202de

    .line 53
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v8, 0x7f030028

    invoke-virtual {p0, v8}, Lcom/weirdvoice/ui/prefs/Codecs;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/Codecs;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 60
    invoke-virtual {v0, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {v0, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 63
    const v8, 0x7f0b0081

    invoke-virtual {p0, v8}, Lcom/weirdvoice/ui/prefs/Codecs;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/weirdvoice/ui/prefs/Codecs;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 64
    new-instance v4, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;

    iget-object v8, p0, Lcom/weirdvoice/ui/prefs/Codecs;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v4, p0, p0, v0, v8}, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;-><init>(Lcom/weirdvoice/ui/prefs/Codecs;Landroid/support/v4/app/FragmentActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V

    .line 65
    .local v4, "tabAdapter":Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;
    const-string v8, "codecs_per_bandwidth"

    invoke-static {p0, v8}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/weirdvoice/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    .line 66
    const-string v8, "use_video"

    invoke-static {p0, v8}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/weirdvoice/ui/prefs/Codecs;->showVideoCodecs:Z

    .line 67
    iget-boolean v8, p0, Lcom/weirdvoice/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    if-eqz v8, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 69
    .local v1, "audioNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v3

    .line 70
    .local v3, "audioWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v3, v8}, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 71
    const-class v8, Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v1, v8}, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 72
    iget-boolean v8, p0, Lcom/weirdvoice/ui/prefs/Codecs;->showVideoCodecs:Z

    if-eqz v8, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 74
    .local v5, "videoNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 76
    .local v7, "videoWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v7, v8}, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 77
    const-class v8, Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v5, v8}, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 88
    .end local v1    # "audioNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    .end local v3    # "audioWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    .end local v5    # "videoNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    .end local v7    # "videoWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 81
    .local v2, "audioTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v2, v8}, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 83
    iget-boolean v8, p0, Lcom/weirdvoice/ui/prefs/Codecs;->showVideoCodecs:Z

    if-eqz v8, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 85
    .local v6, "videoTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/weirdvoice/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v6, v8}, Lcom/weirdvoice/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    goto :goto_0
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
