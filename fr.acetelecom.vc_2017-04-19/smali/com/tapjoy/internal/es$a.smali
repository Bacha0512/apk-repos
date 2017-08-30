.class final Lcom/tapjoy/internal/es$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Hashtable;

.field final synthetic d:Lcom/tapjoy/internal/es;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/es;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    iput-object p1, p0, Lcom/tapjoy/internal/es$a;->d:Lcom/tapjoy/internal/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/app/Application;

    if-eqz v0, :cond_2

    move-object v0, p2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lcom/tapjoy/internal/es$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/es$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/internal/es$a;->c:Ljava/util/Hashtable;

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
