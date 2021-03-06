.class public final Lcom/google/android/gms/internal/zzbmx;
.super Lcom/google/android/gms/internal/zzbnn;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnn;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzm;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/zzm;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_9

    new-instance v0, Lcom/google/android/gms/drive/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzo;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzo;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzm;

    move-object v6, v0

    :goto_0
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetadataChangeSet must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzcS(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->isFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "May not create folders using this method. Use DriveFolder.createFolder() instead of mime type application/vnd.google-apps.folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v6, p1}, Lcom/google/android/gms/drive/zzm;->zze(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    if-eqz p3, :cond_4

    instance-of v0, p3, Lcom/google/android/gms/internal/zzbmn;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->zzsO()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DriveContents are already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzcS(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;

    move-result-object v0

    if-nez p3, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzts()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    move v4, v0

    :goto_2
    invoke-virtual {v6}, Lcom/google/android/gms/drive/zzm;->zzsU()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/zzbrc;->zzaQA:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v3

    :goto_3
    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzcS(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzts()Z

    move-result v0

    if-eqz v0, :cond_7

    move v5, v2

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/zzbmy;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbmy;-><init>(Lcom/google/android/gms/internal/zzbmx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzm;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->zzsM()Lcom/google/android/gms/drive/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v4

    invoke-interface {p3}, Lcom/google/android/gms/drive/DriveContents;->zzsN()V

    goto :goto_2

    :cond_7
    move v5, v1

    goto :goto_4

    :cond_8
    move-object v3, p2

    goto :goto_3

    :cond_9
    move-object v6, p4

    goto/16 :goto_0
.end method

.method private static zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetadataChangeSet must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzcS(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/internal/zzk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->zzts()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/zzk;->isFolder()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "May not create shortcut files using this method. Use DriveFolder.createShortcutFile() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbmx;->zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzbmx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzm;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            "Lcom/google/android/gms/drive/DriveContents;",
            "Lcom/google/android/gms/drive/ExecutionOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbmx;->zzb(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    new-instance v0, Lcom/google/android/gms/drive/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzo;-><init>()V

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/google/android/gms/drive/ExecutionOptions;->zzsR()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "May not set a conflict strategy for new file creation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/drive/ExecutionOptions;->zzsP()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzo;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_1
    invoke-virtual {p4}, Lcom/google/android/gms/drive/ExecutionOptions;->zzsQ()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/zzo;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/drive/zzo;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzm;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzbmx;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/DriveContents;Lcom/google/android/gms/drive/zzm;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final createFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/MetadataChangeSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveFolder$DriveFolderResult;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetadataChangeSet must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/drive/MetadataChangeSet;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The mimetype must be of type application/vnd.google-apps.folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbmz;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbmz;-><init>(Lcom/google/android/gms/internal/zzbmx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zze(Lcom/google/android/gms/internal/zzbay;)Lcom/google/android/gms/internal/zzbay;

    move-result-object v0

    return-object v0
.end method

.method public final listChildren(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbmx;->queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final queryChildren(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/drive/query/Query;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzblo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblo;-><init>()V

    new-instance v1, Lcom/google/android/gms/drive/query/Query$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/drive/query/Query$Builder;-><init>()V

    sget-object v2, Lcom/google/android/gms/drive/query/SearchableField;->PARENTS:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmx;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/drive/query/Filters;->in(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/query/Query$Builder;->addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->getPageToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/query/Query$Builder;->setPageToken(Ljava/lang/String;)Lcom/google/android/gms/drive/query/Query$Builder;

    invoke-virtual {p2}, Lcom/google/android/gms/drive/query/Query;->getSortOrder()Lcom/google/android/gms/drive/query/SortOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/query/Query$Builder;->setSortOrder(Lcom/google/android/gms/drive/query/SortOrder;)Lcom/google/android/gms/drive/query/Query$Builder;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/drive/query/Query$Builder;->build()Lcom/google/android/gms/drive/query/Query;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzblo;->query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method
