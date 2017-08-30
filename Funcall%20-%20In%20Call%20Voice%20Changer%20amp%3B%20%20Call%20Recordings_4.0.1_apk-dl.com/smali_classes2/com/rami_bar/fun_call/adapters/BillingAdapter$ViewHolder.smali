.class Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/adapters/BillingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_billing_image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/rami_bar/fun_call/adapters/BillingAdapter;

.field tv_billing_description:Landroid/widget/TextView;

.field tv_billing_price:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/adapters/BillingAdapter;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->this$0:Lcom/rami_bar/fun_call/adapters/BillingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/adapters/BillingAdapter;Lcom/rami_bar/fun_call/adapters/BillingAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/adapters/BillingAdapter;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/adapters/BillingAdapter$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/BillingAdapter;)V

    return-void
.end method
