.class public Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;
.super Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PNLibraryAdapterView"
.end annotation


# instance fields
.field protected mBanner:Landroid/widget/ImageView;

.field protected mCallToAction:Landroid/widget/TextView;

.field protected mDescription:Landroid/widget/TextView;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mTitle:Landroid/widget/TextView;

.field protected mView:Landroid/view/View;

.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;


# direct methods
.method public constructor <init>(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    .line 213
    invoke-direct {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutContainerView;-><init>(Landroid/content/Context;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected loadWithView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0, p1}, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutContainerView;->loadWithView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->icon:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mIcon:Landroid/widget/ImageView;

    .line 300
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->title:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    .line 301
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->description:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->banner:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mBanner:Landroid/widget/ImageView;

    .line 303
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->callToAction:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    .line 305
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    :cond_0
    return-void
.end method

.method public setCallToActionBackgroundColor(I)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 291
    :cond_0
    return-void
.end method

.method public setCallToActionTextColor(I)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public setCallToActionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 284
    :cond_0
    return-void
.end method

.method public setCallToActionTextSize(F)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    :cond_0
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public setDescriptionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 263
    :cond_0
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    :cond_0
    return-void
.end method

.method public setTitleTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 235
    :cond_0
    return-void
.end method
