.class Lcom/weirdvoice/ui/rates/CountryAdapter$1;
.super Ljava/lang/Object;
.source "CountryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/rates/CountryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

.field private final synthetic val$zeCountry:Lcom/weirdvoice/ui/rates/ZeCountry;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/rates/CountryAdapter;Lcom/weirdvoice/ui/rates/ZeCountry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$1;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iput-object p2, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$1;->val$zeCountry:Lcom/weirdvoice/ui/rates/ZeCountry;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$1;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iget-object v1, v1, Lcom/weirdvoice/ui/rates/CountryAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/weirdvoice/ui/rates/Country;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "iso"

    iget-object v2, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$1;->val$zeCountry:Lcom/weirdvoice/ui/rates/ZeCountry;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/rates/ZeCountry;->getFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "name"

    iget-object v2, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$1;->val$zeCountry:Lcom/weirdvoice/ui/rates/ZeCountry;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/rates/ZeCountry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "currencies"

    iget-object v2, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$1;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    # getter for: Lcom/weirdvoice/ui/rates/CountryAdapter;->currencies:Ljava/lang/String;
    invoke-static {v2}, Lcom/weirdvoice/ui/rates/CountryAdapter;->access$1(Lcom/weirdvoice/ui/rates/CountryAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/weirdvoice/ui/rates/CountryAdapter$1;->this$0:Lcom/weirdvoice/ui/rates/CountryAdapter;

    iget-object v1, v1, Lcom/weirdvoice/ui/rates/CountryAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method
