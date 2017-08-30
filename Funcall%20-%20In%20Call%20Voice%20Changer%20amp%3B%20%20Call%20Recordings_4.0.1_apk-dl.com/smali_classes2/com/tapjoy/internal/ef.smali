.class final Lcom/tapjoy/internal/ef;
.super Lcom/tapjoy/internal/ee;
.source "SourceFile"


# instance fields
.field private final b:Lcom/tapjoy/internal/ev;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tapjoy/internal/ee;-><init>()V

    .line 11
    new-instance v0, Lcom/tapjoy/internal/ef$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ef$1;-><init>(Lcom/tapjoy/internal/ef;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ef;->b:Lcom/tapjoy/internal/ev;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ef;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 1

    .prologue
    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tapjoy/internal/ee;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/ef;->b:Lcom/tapjoy/internal/ev;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/ev;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method
