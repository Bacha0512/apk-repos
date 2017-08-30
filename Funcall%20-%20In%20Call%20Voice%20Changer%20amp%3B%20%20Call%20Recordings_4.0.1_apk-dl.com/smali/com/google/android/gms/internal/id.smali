.class public final Lcom/google/android/gms/internal/id;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/if;


# instance fields
.field private zzbUH:F

.field private zzbUI:F

.field private zzbUJ:F

.field private zzbUK:F

.field private zzbUL:F

.field private zzbUM:F

.field private final zzbUN:Z


# direct methods
.method public constructor <init>(FFFFFFZ)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/id;->zzbUH:F

    iput p2, p0, Lcom/google/android/gms/internal/id;->zzbUI:F

    iput p3, p0, Lcom/google/android/gms/internal/id;->zzbUJ:F

    iput p4, p0, Lcom/google/android/gms/internal/id;->zzbUK:F

    iput v0, p0, Lcom/google/android/gms/internal/id;->zzbUL:F

    iput v0, p0, Lcom/google/android/gms/internal/id;->zzbUM:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/id;->zzbUN:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/PointF;

    iget v3, p0, Lcom/google/android/gms/internal/id;->zzbUH:F

    iget v4, p0, Lcom/google/android/gms/internal/id;->zzbUI:F

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v2

    const/4 v1, 0x2

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/google/android/gms/internal/id;->zzbUJ:F

    iget v5, p0, Lcom/google/android/gms/internal/id;->zzbUK:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Lcom/google/android/gms/internal/id;->zzbUL:F

    iget v5, p0, Lcom/google/android/gms/internal/id;->zzbUM:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v0, v1

    invoke-static {}, Lcom/google/android/gms/internal/ib;->zzEm()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    const v5, 0x368637be    # 4.0000004E-6f

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ib;->zzb([Landroid/graphics/PointF;Lcom/google/android/gms/internal/hx;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    move-object v1, v0

    goto :goto_0
.end method
