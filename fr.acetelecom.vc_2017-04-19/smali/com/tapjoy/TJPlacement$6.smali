.class final Lcom/tapjoy/TJPlacement$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCacheListener;

.field final synthetic b:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJCacheListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacement$6;->b:Lcom/tapjoy/TJPlacement;

    iput-object p2, p0, Lcom/tapjoy/TJPlacement$6;->a:Lcom/tapjoy/TJCacheListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCachingComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$6;->a:Lcom/tapjoy/TJCacheListener;

    invoke-interface {v0, p1}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    return-void
.end method
