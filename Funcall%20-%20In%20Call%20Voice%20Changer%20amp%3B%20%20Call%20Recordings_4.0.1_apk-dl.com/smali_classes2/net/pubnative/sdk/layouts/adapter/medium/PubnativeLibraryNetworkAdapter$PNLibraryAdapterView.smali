.class public Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;
.super Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;
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

.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;


# direct methods
.method public constructor <init>(Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    .line 177
    invoke-direct {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutContainerView;-><init>(Landroid/content/Context;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected loadWithView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0, p1}, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutContainerView;->loadWithView(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->icon:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mIcon:Landroid/widget/ImageView;

    .line 268
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->title:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    .line 269
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->description:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->banner:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mBanner:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->callToAction:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    .line 273
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->setBackgroundColor(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public setCallToActionBackgroundColor(I)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public setCallToActionTextColor(I)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public setCallToActionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    :cond_0
    return-void
.end method

.method public setCallToActionTextSize(F)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    :cond_0
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public setDescriptionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    :cond_0
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 224
    :cond_0
    return-void
.end method

.method public setIconPosition(Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public setTitleTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 210
    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    :cond_0
    return-void
.end method
