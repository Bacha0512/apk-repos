.class Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AdsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/adapters/AdsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_offers_image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

.field tv_offers_description:Landroid/widget/TextView;

.field tv_offers_reward:Landroid/widget/TextView;

.field tv_offers_type:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/adapters/AdsAdapter;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;->this$0:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/adapters/AdsAdapter;Lcom/rami_bar/fun_call/adapters/AdsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/adapters/AdsAdapter;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/adapters/AdsAdapter$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/adapters/AdsAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/AdsAdapter;)V

    return-void
.end method
