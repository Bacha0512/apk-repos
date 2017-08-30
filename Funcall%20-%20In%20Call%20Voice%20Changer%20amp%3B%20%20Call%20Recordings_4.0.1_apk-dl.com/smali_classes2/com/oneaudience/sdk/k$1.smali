.class final Lcom/oneaudience/sdk/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneaudience/sdk/k;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/k$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneaudience/sdk/k$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneaudience/sdk/k$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/oneaudience/sdk/k$1;->a:Landroid/content/Context;

    const v2, 0x103000b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/oneaudience/sdk/k;

    iget-object v2, p0, Lcom/oneaudience/sdk/k$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneaudience/sdk/k$1;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/oneaudience/sdk/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneaudience/sdk/k;->show()V

    return-void
.end method
