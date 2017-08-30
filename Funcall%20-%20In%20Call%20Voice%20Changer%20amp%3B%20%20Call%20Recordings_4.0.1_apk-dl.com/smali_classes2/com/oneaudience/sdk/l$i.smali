.class public Lcom/oneaudience/sdk/l$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneaudience/sdk/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "i"
.end annotation


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneaudience/sdk/l$i;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/oneaudience/sdk/l$i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/oneaudience/sdk/q;Ljava/lang/Exception;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/oneaudience/sdk/l;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error has occurred at task: %s\nerror:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/l$i;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/l$i;->a:Landroid/content/Context;

    const-string v1, "oneaudience"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/l$i;->a:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
