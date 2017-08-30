.class public Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;
.super Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;
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

.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;


# direct methods
.method public constructor <init>(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    .line 155
    invoke-direct {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutContainerView;-><init>(Landroid/content/Context;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected loadWithView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1}, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutContainerView;->loadWithView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->icon:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mIcon:Landroid/widget/ImageView;

    .line 242
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->title:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->description:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->banner:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mBanner:Landroid/widget/ImageView;

    .line 245
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v1, v1, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    move-result-object v1

    iget v1, v1, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->callToAction:I

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    .line 247
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->this$0:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;

    iget-object v0, v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->setBackgroundColor(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public setCallToActionBackgroundColor(I)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public setCallToActionTextColor(I)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public setCallToActionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    :cond_0
    return-void
.end method

.method public setCallToActionTextSize(F)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 219
    :cond_0
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    :cond_0
    return-void
.end method

.method public setDescriptionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 198
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public setTitleTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    :cond_0
    return-void
.end method
