.class final Lcom/google/android/gms/location/places/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/location/places/internal/zzag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzag;

    check-cast p2, Lcom/google/android/gms/location/places/internal/zzag;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/internal/zzag;->getLikelihood()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/location/places/internal/zzag;->getLikelihood()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    neg-int v0, v0

    return v0
.end method
