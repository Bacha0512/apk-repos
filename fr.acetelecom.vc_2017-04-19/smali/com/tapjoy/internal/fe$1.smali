.class final Lcom/tapjoy/internal/fe$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/be;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/fe;->c()Lcom/tapjoy/internal/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/cc;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
