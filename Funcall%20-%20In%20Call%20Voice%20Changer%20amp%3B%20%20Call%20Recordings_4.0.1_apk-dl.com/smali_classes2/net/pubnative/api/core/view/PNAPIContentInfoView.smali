.class public Lnet/pubnative/api/core/view/PNAPIContentInfoView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseTask:Ljava/lang/Runnable;

.field private mContainerView:Landroid/widget/RelativeLayout;

.field private mContentInfoIcon:Landroid/widget/ImageView;

.field private mContentInfoText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;-><init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)V

    iput-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    .line 39
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;-><init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)V

    iput-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/view/PNAPIContentInfoView$1;-><init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)V

    iput-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    .line 49
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public closeLayout()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mHandler:Landroid/os/Handler;

    .line 55
    sget v1, Lnet/pubnative/sdk/R$layout;->content_info_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContainerView:Landroid/widget/RelativeLayout;

    .line 56
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContainerView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->ic_context_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoIcon:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContainerView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->tv_context_text:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->openLayout()V

    .line 109
    return-void
.end method

.method public openLayout()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mCloseTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method

.method public setContextText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setIconClickUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->mContentInfoText:Landroid/widget/TextView;

    new-instance v1, Lnet/pubnative/api/core/view/PNAPIContentInfoView$3;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView$3;-><init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    invoke-direct {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;-><init>()V

    new-instance v1, Lnet/pubnative/api/core/view/PNAPIContentInfoView$2;

    invoke-direct {v1, p0}, Lnet/pubnative/api/core/view/PNAPIContentInfoView$2;-><init>(Lnet/pubnative/api/core/view/PNAPIContentInfoView;)V

    invoke-virtual {v0, p1, v1}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->load(Ljava/lang/String;Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;)V

    .line 81
    return-void
.end method
