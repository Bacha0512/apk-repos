.class public Lcom/google/firebase/appindexing/builders/IndexableBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/firebase/appindexing/builders/IndexableBuilder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzD:Ljava/lang/String;

.field private final zzVB:Ljava/lang/String;

.field private final zzajQ:Landroid/os/Bundle;

.field private zzbVH:Lcom/google/firebase/appindexing/internal/Thing$zza;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzajQ:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzVB:Ljava/lang/String;

    return-void
.end method

.method private final varargs zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/firebase/appindexing/internal/Thing;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/firebase/appindexing/internal/Thing;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    aget-object v3, p2, v0

    aput-object v3, p2, v2

    aget-object v3, p2, v0

    if-nez v3, :cond_0

    const/16 v3, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Thing at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null and is ignored by put method."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-lez v2, :cond_2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/appindexing/internal/Thing;

    iget-object v1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzajQ:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzc([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2
    :goto_2
    return-object p0

    :cond_3
    const-string v0, "Thing array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static zzc([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">([TS;)[TS;"
        }
    .end annotation

    const/16 v1, 0x64

    array-length v0, p0

    if-ge v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "Input Array of elements is too big, cutting off."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/google/firebase/appindexing/Indexable;
    .locals 5

    new-instance v1, Lcom/google/firebase/appindexing/internal/Thing;

    new-instance v2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzajQ:Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzbVH:Lcom/google/firebase/appindexing/internal/Thing$zza;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata;->zzbVD:Lcom/google/firebase/appindexing/internal/Thing$zza;

    :goto_0
    iget-object v3, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzD:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzVB:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/firebase/appindexing/internal/Thing;-><init>(Landroid/os/Bundle;Lcom/google/firebase/appindexing/internal/Thing$zza;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzbVH:Lcom/google/firebase/appindexing/internal/Thing$zza;

    goto :goto_0
.end method

.method public varargs put(Ljava/lang/String;[J)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TT;"
        }
    .end annotation

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzajQ:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p2

    if-lez v1, :cond_1

    array-length v1, p2

    if-ge v1, v2, :cond_0

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :goto_1
    return-object p0

    :cond_0
    const-string v1, "Input Array of elements is too big, cutting off."

    invoke-static {v1}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "Long array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public varargs put(Ljava/lang/String;[Lcom/google/firebase/appindexing/Indexable;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/firebase/appindexing/Indexable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/firebase/appindexing/Indexable;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    new-array v2, v0, [Lcom/google/firebase/appindexing/internal/Thing;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_1

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/firebase/appindexing/internal/Thing;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;

    const-string v1, "Invalid Indexable encountered. Use Indexable.Builder or convenience methods under Indexables to create the Indexable."

    invoke-direct {v0, v1}, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/firebase/appindexing/internal/Thing;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    return-object p0
.end method

.method protected varargs put(Ljava/lang/String;[Lcom/google/firebase/appindexing/builders/IndexableBuilder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/firebase/appindexing/builders/IndexableBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/google/firebase/appindexing/builders/IndexableBuilder;",
            ">(",
            "Ljava/lang/String;",
            "[TS;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_3

    array-length v0, p2

    new-array v2, v0, [Lcom/google/firebase/appindexing/internal/Thing;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_1

    aget-object v0, p2, v1

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Builder at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is null and is ignored by put method."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->build()Lcom/google/firebase/appindexing/Indexable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appindexing/internal/Thing;

    aput-object v0, v2, v1

    goto :goto_1

    :cond_1
    array-length v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Ljava/lang/String;[Lcom/google/firebase/appindexing/internal/Thing;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    :cond_2
    :goto_2
    return-object p0

    :cond_3
    const-string v0, "Builder array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public varargs put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/16 v5, 0x4e1f

    const/16 v6, 0x4e20

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzajQ:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    :goto_0
    array-length v4, v0

    const/16 v7, 0x64

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    aput-object v4, v0, v3

    aget-object v4, v0, v1

    if-nez v4, :cond_0

    const/16 v4, 0x3b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "String at "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is null and is ignored by put method."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    const/16 v4, 0x35

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "String at "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is too long, truncating string."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_2

    move-object v4, v7

    :goto_2
    aput-object v4, v0, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    if-lez v3, :cond_4

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzc([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v8, p1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    const-string v0, "String array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move v4, v6

    goto :goto_3
.end method

.method public varargs put(Ljava/lang/String;[Z)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TT;"
        }
    .end annotation

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzajQ:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p2

    if-lez v1, :cond_1

    array-length v1, p2

    if-ge v1, v2, :cond_0

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :goto_1
    return-object p0

    :cond_0
    const-string v1, "Input Array of elements is too big, cutting off."

    invoke-static {v1}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "Boolean array is empty and is ignored by put method."

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzw;->zzgo(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "description"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setImage(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "image"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata(Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 2
    .param p1    # Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzbVH:Lcom/google/firebase/appindexing/internal/Thing$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "setMetadata may only be called once"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzEA()Lcom/google/firebase/appindexing/internal/Thing$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzbVH:Lcom/google/firebase/appindexing/internal/Thing$zza;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setSameAs(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sameAs"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->put(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/google/firebase/appindexing/builders/IndexableBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zzD:Ljava/lang/String;

    return-object p0
.end method
