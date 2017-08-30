.class final Lcom/google/android/gms/internal/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ch;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzx([B)Lcom/google/android/gms/internal/cm;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ca;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ca;

    const-string v1, "Cannot parse a null byte[]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ca;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ca;

    const-string v1, "Cannot parse a 0 length byte[]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ca;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->zzfO(Ljava/lang/String;)Lcom/google/android/gms/internal/db;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "The container was successfully parsed from the resource"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ca; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ci;->zzbKE:Lcom/google/android/gms/internal/ch;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ch;->zzx([B)Lcom/google/android/gms/internal/cm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/cm;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/gms/internal/cn;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/internal/db;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cm;->zzCR()Lcom/google/android/gms/internal/dj;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/cn;Lcom/google/android/gms/internal/dj;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ca;

    const-string v1, "The resource data is corrupted. The container cannot be extracted from the JSON data"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ca;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ca;

    const-string v1, "The resource data is invalid. The container cannot be extracted from the JSON data"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ca;-><init>(Ljava/lang/String;)V

    throw v0
.end method
