.class public final Lcom/tapjoy/internal/al;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:F

.field private c:F

.field private d:I

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/al;->a:Z

    iput v1, p0, Lcom/tapjoy/internal/al;->b:F

    iput v1, p0, Lcom/tapjoy/internal/al;->c:F

    iput v3, p0, Lcom/tapjoy/internal/al;->d:I

    iput v2, p0, Lcom/tapjoy/internal/al;->e:F

    iput v3, p0, Lcom/tapjoy/internal/al;->f:I

    iput v2, p0, Lcom/tapjoy/internal/al;->g:F

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ak;
    .locals 8

    new-instance v0, Lcom/tapjoy/internal/ak;

    iget-boolean v1, p0, Lcom/tapjoy/internal/al;->a:Z

    iget v2, p0, Lcom/tapjoy/internal/al;->b:F

    iget v3, p0, Lcom/tapjoy/internal/al;->c:F

    iget v4, p0, Lcom/tapjoy/internal/al;->d:I

    iget v5, p0, Lcom/tapjoy/internal/al;->e:F

    iget v6, p0, Lcom/tapjoy/internal/al;->f:I

    iget v7, p0, Lcom/tapjoy/internal/al;->g:F

    invoke-direct/range {v0 .. v7}, Lcom/tapjoy/internal/ak;-><init>(ZFFIFIF)V

    return-object v0
.end method
