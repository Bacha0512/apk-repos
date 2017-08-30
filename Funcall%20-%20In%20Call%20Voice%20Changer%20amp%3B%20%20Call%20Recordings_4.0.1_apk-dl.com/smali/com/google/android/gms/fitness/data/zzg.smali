.class final Lcom/google/android/gms/fitness/data/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbuh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbuh",
        "<",
        "Lcom/google/android/gms/fitness/data/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaTu:Lcom/google/android/gms/fitness/data/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzg;->zzaTu:Lcom/google/android/gms/fitness/data/zzg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzA(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzcY(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/zzm;->zzcZ(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic zze(Ljava/lang/Object;I)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zza(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getFormat()I

    move-result v0

    return v0
.end method

.method public final synthetic zzf(Ljava/lang/Object;I)Z
    .locals 2

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zza(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Field;->isOptional()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic zzg(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/data/zzg;->zza(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/data/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzz(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
