.class public abstract Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutContainerView;
.super Lnet/pubnative/sdk/layouts/PNLayoutView;
.source "SourceFile"


# instance fields
.field protected mRootView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/pubnative/sdk/layouts/PNLayoutView;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected loadWithView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_layout_large_container:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutContainerView;->mRootView:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutContainerView;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45
    return-void
.end method
