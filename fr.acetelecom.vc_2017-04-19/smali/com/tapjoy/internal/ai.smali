.class public Lcom/tapjoy/internal/ai;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ai$1;,
        Lcom/tapjoy/internal/ai$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/ai;->a:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/ai;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final b()Lcom/tapjoy/internal/ai;
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/ai;->a:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method
