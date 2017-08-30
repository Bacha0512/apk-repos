.class public Lcom/rami_bar/fun_call/adapters/BillingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BillingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/rami_bar/fun_call/objects/receive/Billing;",
        ">;"
    }
.end annotation


# instance fields
.field private billings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Billing;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private layoutResourceId:I


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
            "Lcom/rami_bar/fun_call/objects/receive/Billing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "billings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/Billing;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput p2, p0, Lcom/rami_bar/fun_call/adapters/BillingAdapter;->layoutResourceId:I

    .line 25
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/BillingAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/rami_bar/fun_call/adapters/BillingAdapter;->billings:Ljava/util/ArrayList;

    .line 27
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

    .line 32
    if-nez p2, :cond_0

    .line 33
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/BillingAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 34
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/rami_bar/fun_call/adapters/BillingAdapter;->layoutResourceId:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    new-instance v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/BillingAdapter;Lcom/rami_bar/fun_call/adapters/BillingAdapter$1;)V

    .line 36
    .local v1, "holder":Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;
    const v3, 0x7f1001e0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->tv_billing_description:Landroid/widget/TextView;

    .line 37
    const v3, 0x7f1001e1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->tv_billing_price:Landroid/widget/TextView;

    .line 38
    const v3, 0x7f1001df

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->iv_billing_image:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .end local v1    # "holder":Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;

    .line 43
    .restart local v1    # "holder":Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;
    iget-object v3, p0, Lcom/rami_bar/fun_call/adapters/BillingAdapter;->billings:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Billing;

    .line 44
    .local v0, "billing":Lcom/rami_bar/fun_call/objects/receive/Billing;
    iget-object v3, v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->tv_billing_price:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/rami_bar/fun_call/objects/receive/Billing;->price:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v3, v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->tv_billing_description:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/rami_bar/fun_call/objects/receive/Billing;->decription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/Billing;->sku:Ljava/lang/String;

    const-string v4, "record"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    iget-object v3, v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->iv_billing_image:Landroid/widget/ImageView;

    const v4, 0x7f0201cb

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_0
    return-object p2

    .line 49
    :cond_1
    iget-object v3, v1, Lcom/rami_bar/fun_call/adapters/BillingAdapter$ViewHolder;->iv_billing_image:Landroid/widget/ImageView;

    const v4, 0x7f0201ca

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
