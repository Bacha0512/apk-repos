.class public final Lcom/google/android/gms/fitness/data/Value;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final format:I

.field private value:F

.field private final versionCode:I

.field private zzaIF:Ljava/lang/String;

.field private zzaVl:Z

.field private zzaVm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field

.field private zzaVn:[I

.field private zzaVo:[F

.field private zzaVp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/fitness/data/Value;-><init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V

    return-void
.end method

.method constructor <init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    iput p4, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    if-nez p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVn:[I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVo:[F

    iput-object p9, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVp:[B

    return-void

    :cond_0
    const-class v0, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p6}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-virtual {p6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final asActivity()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/zza;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final asFloat()F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final asInt()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "Value is not in int format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final asString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in string format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clearKey(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Value;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->value:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->value:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVn:[I

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Value;->zzaVn:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVo:[F

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Value;->zzaVo:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVp:[B

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Value;->zzaVp:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    return v0
.end method

.method public final getKeyValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float map format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVn:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVo:[F

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVp:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    return v0
.end method

.method public final setActivity(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/zza;->zzcW(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    return-void
.end method

.method public final setFloat(F)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setInt(I)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setKeyValue(Ljava/lang/String;F)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/fitness/data/MapValue;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/fitness/data/MapValue;-><init>(IF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setString(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set a string value to a field that is not in STRING format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVl:Z

    if-nez v0, :cond_0

    const-string v0, "unset"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVn:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVo:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVp:[B

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVp:[B

    array-length v1, v1

    invoke-static {v0, v2, v1, v2}, Lcom/google/android/gms/common/util/zzl;->zza([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->getFormat()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaIF:Ljava/lang/String;

    invoke-static {p1, v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v4, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVn:[I

    invoke-static {p1, v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[IZ)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVo:[F

    invoke-static {p1, v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[FZ)V

    const/16 v0, 0x3e8

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->versionCode:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVp:[B

    invoke-static {p1, v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaVm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method
