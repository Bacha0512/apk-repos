.class final Lcom/tapjoy/internal/db$1;
.super Lcom/tapjoy/internal/dd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/db;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/db;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tapjoy/internal/db$1;->a:Lcom/tapjoy/internal/db;

    invoke-direct {p0}, Lcom/tapjoy/internal/dd;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tapjoy/internal/db$1;->a:Lcom/tapjoy/internal/db;

    .line 1123
    new-instance v1, Lcom/tapjoy/internal/db$2;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/db$2;-><init>(Lcom/tapjoy/internal/db;)V

    .line 43
    new-instance v0, Lcom/tapjoy/internal/db$1$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/db$1$1;-><init>(Lcom/tapjoy/internal/db$1;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tapjoy/internal/db$1;->a:Lcom/tapjoy/internal/db;

    invoke-virtual {v0}, Lcom/tapjoy/internal/db;->d()V

    .line 76
    return-void
.end method
