.class public Lnet/pubnative/player/widget/CountDownView;
.super Landroid/widget/FrameLayout;
.source "CountDownView.java"


# instance fields
.field private progressBarView:Landroid/widget/ProgressBar;

.field private progressTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lnet/pubnative/player/widget/CountDownView;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1}, Lnet/pubnative/player/widget/CountDownView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p1}, Lnet/pubnative/player/widget/CountDownView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 71
    sget v1, Lnet/pubnative/player/R$layout;->pubnative_player_count_down:I

    invoke-static {p1, v1, p0}, Lnet/pubnative/player/widget/CountDownView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 72
    .local v7, "rootView":Landroid/view/View;
    sget v1, Lnet/pubnative/player/R$id;->view_progress_bar:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lnet/pubnative/player/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    .line 73
    sget v1, Lnet/pubnative/player/R$id;->view_progress_text:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/pubnative/player/widget/CountDownView;->progressTextView:Landroid/widget/TextView;

    .line 74
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 75
    .local v0, "makeVertical":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 76
    iget-object v1, p0, Lnet/pubnative/player/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    return-void
.end method


# virtual methods
.method public setProgress(II)V
    .locals 3
    .param p1, "currentMs"    # I
    .param p2, "totalMs"    # I

    .prologue
    .line 81
    iget-object v1, p0, Lnet/pubnative/player/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 82
    iget-object v1, p0, Lnet/pubnative/player/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 83
    iget-object v1, p0, Lnet/pubnative/player/widget/CountDownView;->progressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 84
    sub-int v1, p2, p1

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v0, v1, 0x1

    .line 85
    .local v0, "remainSec":I
    iget-object v1, p0, Lnet/pubnative/player/widget/CountDownView;->progressTextView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
