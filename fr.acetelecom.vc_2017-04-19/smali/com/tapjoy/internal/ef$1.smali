.class final Lcom/tapjoy/internal/ef$1;
.super Lcom/tapjoy/internal/es;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ef;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ef;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/ef$1;->a:Lcom/tapjoy/internal/ef;

    invoke-direct {p0}, Lcom/tapjoy/internal/es;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/ef$1;->a:Lcom/tapjoy/internal/ef;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/ef;->a(Lcom/tapjoy/internal/ef;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method
