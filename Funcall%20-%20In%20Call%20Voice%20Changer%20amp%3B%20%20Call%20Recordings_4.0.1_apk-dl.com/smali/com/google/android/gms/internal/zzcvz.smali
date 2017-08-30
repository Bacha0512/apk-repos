.class public final Lcom/google/android/gms/internal/zzcvz;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbDw:Ljava/lang/String;

.field private final zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzbHW:Lcom/google/android/gms/tagmanager/zzce;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcvz;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcvz;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcvz;->zzbHW:Lcom/google/android/gms/tagmanager/zzce;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcvz;->zzbDw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/dj;)Lcom/google/android/gms/internal/zzcvu;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzcvu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcvz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcvz;->zzbDw:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcvz;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcvz;->zzbHW:Lcom/google/android/gms/tagmanager/zzce;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcvu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/dj;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V

    return-object v0
.end method
