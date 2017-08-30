.class public Lcom/google/android/gms/fitness/request/GoalsReadRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/GoalsReadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private final zzaUJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWN:Lcom/google/android/gms/internal/zzbwe;

.field private final zzaWO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->versionCode:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWN:Lcom/google/android/gms/internal/zzbwe;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWO:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaUJ:Ljava/util/List;

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbwf;->zzS(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbwe;

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/internal/zzbwe;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;Lcom/google/android/gms/fitness/request/zzab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest;Lcom/google/android/gms/internal/zzbwe;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaUJ:Ljava/util/List;

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/internal/zzbwe;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbwe;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwe;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(ILandroid/os/IBinder;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbwe;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWO:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWO:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaUJ:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaUJ:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public getActivityNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/zza;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWO:Ljava/util/List;

    return-object v0
.end method

.method public getObjectiveTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWO:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->getActivityNames()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbe;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "dataTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWO:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "objectiveTypes"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "activities"

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->getActivityNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWN:Lcom/google/android/gms/internal/zzbwe;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbwe;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->getDataTypes()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzd(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaWP:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzd(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->zzaUJ:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzd(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
