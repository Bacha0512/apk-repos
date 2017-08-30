.class public Lnet/pubnative/sdk/layouts/PNLayoutView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public setAdBackgroundColor(I)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public setCallToActionBackgroundColor(I)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public setCallToActionTextColor(I)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public setCallToActionTextFont(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public setCallToActionTextSize(F)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public setContainerBackgroundColor(I)V
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLayoutView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public setDescriptionTextFont(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public setTitleTextFont(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
