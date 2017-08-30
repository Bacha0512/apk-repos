.class final Lcom/tapjoy/internal/fs$1;
.super Lcom/tapjoy/internal/hc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fs;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fs;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tapjoy/internal/fs$1;->a:Lcom/tapjoy/internal/fs;

    invoke-direct {p0}, Lcom/tapjoy/internal/hc;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tapjoy/internal/fs$1;->a:Lcom/tapjoy/internal/fs;

    .line 1021
    iget-object v0, v0, Lcom/tapjoy/internal/fs;->a:Lcom/tapjoy/internal/gg;

    .line 206
    invoke-virtual {v0}, Lcom/tapjoy/internal/gg;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
