.class final Lcom/tapjoy/internal/fk$1;
.super Lcom/tapjoy/internal/gt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fk;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fk;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fk$1;->a:Lcom/tapjoy/internal/fk;

    invoke-direct {p0}, Lcom/tapjoy/internal/gt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fk$1;->a:Lcom/tapjoy/internal/fk;

    iget-object v0, v0, Lcom/tapjoy/internal/fk;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
