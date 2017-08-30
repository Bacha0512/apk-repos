.class public Lcom/rami_bar/fun_call/activities/FragmentInfo;
.super Landroid/support/v4/app/Fragment;
.source "FragmentInfo.java"


# instance fields
.field private mSuggestion:Lcom/rami_bar/fun_call/objects/receive/Suggestion;

.field private tv_headline:Landroid/widget/TextView;

.field private tv_info_body:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentInfo;)Lcom/rami_bar/fun_call/objects/receive/Suggestion;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentInfo;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->mSuggestion:Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    return-object v0
.end method

.method private getViewsIds(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->tv_headline:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f10016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->tv_info_body:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method private handleCallbacks()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->tv_info_body:Landroid/widget/TextView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentInfo$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentInfo$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method private setDataToViews()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "suggestion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->mSuggestion:Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    .line 56
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->mSuggestion:Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->tv_headline:Landroid/widget/TextView;

    const v1, 0x7f090099

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/FragmentInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->tv_info_body:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentInfo;->mSuggestion:Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentInfo;->getViewsIds(Landroid/view/View;)V

    .line 27
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentInfo;->setDataToViews()V

    .line 29
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentInfo;->handleCallbacks()V

    .line 31
    return-object v0
.end method
