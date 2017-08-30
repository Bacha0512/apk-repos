.class public final Lcom/google/android/gms/internal/zzbkb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbkb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final moduleId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field private pid:I

.field private uid:I

.field private zzaLA:Ljava/lang/String;

.field private zzaLB:Ljava/lang/String;

.field private zzaLC:I

.field private zzaLD:Lcom/google/android/gms/internal/zzej;

.field public final zzaLx:Ljava/lang/String;

.field private zzaLy:I

.field private zzaLz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzbkb;->uid:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLy:I

    iput p6, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLz:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLA:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLB:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLC:I

    iput p10, p0, Lcom/google/android/gms/internal/zzbkb;->pid:I

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/awareness/AwarenessOptions;)Lcom/google/android/gms/internal/zzbkb;
    .locals 11

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzbkb;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzmQ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/gms/common/util/zzd;->zzA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzmR()I

    move-result v6

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzmS()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzmT()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/google/android/gms/awareness/AwarenessOptions;->zzmU()I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzbkb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbkb;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzbkb;

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->uid:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbkb;->uid:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLy:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLy:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLz:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLz:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLC:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLC:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLA:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLA:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLB:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLB:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLA:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLB:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->uid:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLy:I

    iget v5, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLz:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLA:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLB:Ljava/lang/String;

    iget v8, p0, Lcom/google/android/gms/internal/zzbkb;->pid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x59

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "(accnt="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vrsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 3pPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,  3pMdlId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,  pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLD:Lcom/google/android/gms/internal/zzej;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzej;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzej;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLD:Lcom/google/android/gms/internal/zzej;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLD:Lcom/google/android/gms/internal/zzej;

    goto/16 :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->uid:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLy:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLz:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLA:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLB:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->zzaLC:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/zzbkb;->pid:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
