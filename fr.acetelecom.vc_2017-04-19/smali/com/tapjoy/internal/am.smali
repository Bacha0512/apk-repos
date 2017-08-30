.class public final Lcom/tapjoy/internal/am;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:F

.field protected c:I

.field protected d:F

.field protected e:I

.field protected f:F

.field protected g:I

.field protected h:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tapjoy/internal/am;->a:I

    iput v0, p0, Lcom/tapjoy/internal/am;->b:F

    iput v1, p0, Lcom/tapjoy/internal/am;->c:I

    iput v0, p0, Lcom/tapjoy/internal/am;->d:F

    iput v1, p0, Lcom/tapjoy/internal/am;->e:I

    iput v0, p0, Lcom/tapjoy/internal/am;->f:F

    iput v1, p0, Lcom/tapjoy/internal/am;->g:I

    iput v0, p0, Lcom/tapjoy/internal/am;->h:F

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/animation/Animation;
    .locals 9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/tapjoy/internal/am;->a:I

    iget v2, p0, Lcom/tapjoy/internal/am;->b:F

    iget v3, p0, Lcom/tapjoy/internal/am;->c:I

    iget v4, p0, Lcom/tapjoy/internal/am;->d:F

    iget v5, p0, Lcom/tapjoy/internal/am;->e:I

    iget v6, p0, Lcom/tapjoy/internal/am;->f:F

    iget v7, p0, Lcom/tapjoy/internal/am;->g:I

    iget v8, p0, Lcom/tapjoy/internal/am;->h:F

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    return-object v0
.end method

.method public final a(F)Lcom/tapjoy/internal/am;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/am;->a:I

    iput p1, p0, Lcom/tapjoy/internal/am;->b:F

    return-object p0
.end method

.method public final b(F)Lcom/tapjoy/internal/am;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/am;->e:I

    iput p1, p0, Lcom/tapjoy/internal/am;->f:F

    return-object p0
.end method
