.class final Lcom/oneaudience/sdk/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/SharedPreferences;

.field final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/g;Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/f$1;->a:Lcom/oneaudience/sdk/g;

    iput-object p2, p0, Lcom/oneaudience/sdk/f$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneaudience/sdk/f$1;->c:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/oneaudience/sdk/f$1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/oneaudience/sdk/c;

    invoke-direct {v0}, Lcom/oneaudience/sdk/c;-><init>()V

    iget-object v1, p0, Lcom/oneaudience/sdk/f$1;->a:Lcom/oneaudience/sdk/g;

    iget-object v2, p0, Lcom/oneaudience/sdk/f$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneaudience/sdk/f$1;->c:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/oneaudience/sdk/f$1;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneaudience/sdk/g;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)Lcom/oneaudience/sdk/b/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneaudience/sdk/c;->a(Lcom/oneaudience/sdk/b/a/c;)Lcom/oneaudience/sdk/b/a/d;

    move-result-object v0

    invoke-static {}, Lcom/oneaudience/sdk/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error Reporting code : %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v0, v0, Lcom/oneaudience/sdk/b/a/d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
