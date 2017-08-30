.class Lcom/weirdvoice/ui/CountryCode$1;
.super Ljava/lang/Object;
.source "CountryCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/CountryCode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/CountryCode;

.field private final synthetic val$allCountrie:[Ljava/lang/String;

.field private final synthetic val$ima:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/CountryCode;[Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/CountryCode$1;->this$0:Lcom/weirdvoice/ui/CountryCode;

    iput-object p2, p0, Lcom/weirdvoice/ui/CountryCode$1;->val$allCountrie:[Ljava/lang/String;

    iput-object p3, p0, Lcom/weirdvoice/ui/CountryCode$1;->val$ima:Landroid/widget/ImageView;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/CountryCode$1;->this$0:Lcom/weirdvoice/ui/CountryCode;

    const-class v2, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "goNext":Landroid/content/Intent;
    # getter for: Lcom/weirdvoice/ui/CountryCode;->from:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/CountryCode;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Myaccount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "goNext":Landroid/content/Intent;
    iget-object v1, p0, Lcom/weirdvoice/ui/CountryCode$1;->this$0:Lcom/weirdvoice/ui/CountryCode;

    const-class v2, Lcom/weirdvoice/ui/Myaccount;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v0    # "goNext":Landroid/content/Intent;
    const-string v1, "isocountry"

    iget-object v2, p0, Lcom/weirdvoice/ui/CountryCode$1;->val$allCountrie:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/CountryCode$1;->this$0:Lcom/weirdvoice/ui/CountryCode;

    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/CountryCode;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object v1, p0, Lcom/weirdvoice/ui/CountryCode$1;->this$0:Lcom/weirdvoice/ui/CountryCode;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/CountryCode;->finish()V

    .line 110
    return-void

    .line 102
    :cond_0
    # getter for: Lcom/weirdvoice/ui/CountryCode;->from:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/CountryCode;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Register"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "goNext":Landroid/content/Intent;
    iget-object v1, p0, Lcom/weirdvoice/ui/CountryCode$1;->this$0:Lcom/weirdvoice/ui/CountryCode;

    const-class v2, Lcom/weirdvoice/ui/Register;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .restart local v0    # "goNext":Landroid/content/Intent;
    const-string v1, "isocountry"

    iget-object v2, p0, Lcom/weirdvoice/ui/CountryCode$1;->val$allCountrie:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/CountryCode$1;->val$ima:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    goto :goto_0
.end method
