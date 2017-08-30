.class Lcom/oneaudience/sdk/l$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneaudience/sdk/b/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneaudience/sdk/l$b;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneaudience/sdk/b/b/b$a",
        "<",
        "Landroid/accounts/Account;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/l$b;


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/l$b;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/l$b$1;->a:Lcom/oneaudience/sdk/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/l$b$1;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method
