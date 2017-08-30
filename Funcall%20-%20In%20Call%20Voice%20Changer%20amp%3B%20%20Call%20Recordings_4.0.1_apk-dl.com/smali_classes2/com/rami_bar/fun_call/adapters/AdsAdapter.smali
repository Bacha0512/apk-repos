.class public Lcom/rami_bar/fun_call/adapters/AdsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AdsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private layoutResourceId:I

.field private mAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput p2, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->layoutResourceId:I

    .line 26
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->mAds:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 33
    if-nez p2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 35
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->layoutResourceId:I

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/AdsAdapter;Lcom/rami_bar/fun_call/adapters/AdsAdapter$1;)V

    .line 37
    .local v0, "holder":Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;
    const v3, 0x7f1001ec

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->tv_offers_description:Landroid/widget/TextView;

    .line 38
    const v3, 0x7f1001ea

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->iv_offers_image:Landroid/widget/ImageView;

    .line 39
    const v3, 0x7f1001eb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->tv_offers_type:Landroid/widget/TextView;

    .line 40
    const v3, 0x7f1001ed

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->tv_offers_reward:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    .end local v0    # "holder":Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;

    .line 45
    .restart local v0    # "holder":Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;

    .line 47
    .local v2, "offer":Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;
    iget-object v3, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->tv_offers_description:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->tv_offers_type:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->tv_offers_reward:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;->reward:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v4, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;->image_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    iget-object v4, v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->iv_offers_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 52
    return-object p2
.end method
