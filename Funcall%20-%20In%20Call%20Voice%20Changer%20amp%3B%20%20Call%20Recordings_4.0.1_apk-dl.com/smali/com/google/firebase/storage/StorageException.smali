.class public Lcom/google/firebase/storage/StorageException;
.super Lcom/google/firebase/FirebaseException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageException$ErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_BUCKET_NOT_FOUND:I = -0x32d3

.field public static final ERROR_CANCELED:I = -0x32f0

.field public static final ERROR_INVALID_CHECKSUM:I = -0x32e7

.field public static final ERROR_NOT_AUTHENTICATED:I = -0x32dc

.field public static final ERROR_NOT_AUTHORIZED:I = -0x32dd

.field public static final ERROR_OBJECT_NOT_FOUND:I = -0x32d2

.field public static final ERROR_PROJECT_NOT_FOUND:I = -0x32d4

.field public static final ERROR_QUOTA_EXCEEDED:I = -0x32d5

.field public static final ERROR_RETRY_LIMIT_EXCEEDED:I = -0x32e6

.field public static final ERROR_UNKNOWN:I = -0x32c8

.field static zzcos:Ljava/io/IOException;


# instance fields
.field private final mErrorCode:I

.field private final zzcot:I

.field private zzcou:Ljava/lang/String;

.field private zzcov:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "The operation was canceled."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/storage/StorageException;->zzcos:Ljava/io/IOException;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 6

    invoke-direct {p0}, Lcom/google/firebase/FirebaseException;-><init>()V

    sparse-switch p1, :sswitch_data_0

    const-string v0, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcou:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageException;->zzcov:Ljava/lang/Throwable;

    iput p1, p0, Lcom/google/firebase/storage/StorageException;->mErrorCode:I

    iput p3, p0, Lcom/google/firebase/storage/StorageException;->zzcot:I

    const-string v0, "StorageException"

    iget-object v1, p0, Lcom/google/firebase/storage/StorageException;->zzcou:Ljava/lang/String;

    iget v2, p0, Lcom/google/firebase/storage/StorageException;->mErrorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/firebase/storage/StorageException;->zzcot:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "StorageException has occurred.\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n Code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HttpResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcov:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "StorageException"

    iget-object v1, p0, Lcom/google/firebase/storage/StorageException;->zzcov:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StorageException;->zzcov:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :sswitch_0
    const-string v0, "An unknown error occurred, please check the HTTP result code and inner exception for server response."

    goto :goto_0

    :sswitch_1
    const-string v0, "Object does not exist at location."

    goto :goto_0

    :sswitch_2
    const-string v0, "Bucket does not exist."

    goto :goto_0

    :sswitch_3
    const-string v0, "Project does not exist."

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage."

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "User is not authenticated, please authenticate using Firebase Authentication and try again."

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "User does not have permission to access this object."

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "The operation retry limit has been exceeded."

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "Object has a checksum which does not match. Please retry the operation."

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "The operation was cancelled."

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x32f0 -> :sswitch_9
        -0x32e7 -> :sswitch_8
        -0x32e6 -> :sswitch_7
        -0x32dd -> :sswitch_6
        -0x32dc -> :sswitch_5
        -0x32d5 -> :sswitch_4
        -0x32d4 -> :sswitch_3
        -0x32d3 -> :sswitch_2
        -0x32d2 -> :sswitch_1
        -0x32c8 -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x32f0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBp:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const/16 v0, -0x32e6

    goto :goto_0

    :cond_1
    const/16 v0, -0x32c8

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/google/firebase/storage/StorageException;->zzcos:Ljava/io/IOException;

    if-ne p1, v0, :cond_0

    const/16 v0, -0x32f0

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/storage/StorageException;-><init>(ILjava/lang/Throwable;I)V

    return-void

    :cond_0
    sparse-switch p2, :sswitch_data_0

    const/16 v0, -0x32c8

    goto :goto_0

    :sswitch_0
    const/16 v0, -0x32e6

    goto :goto_0

    :sswitch_1
    const/16 v0, -0x32dc

    goto :goto_0

    :sswitch_2
    const/16 v0, -0x32dd

    goto :goto_0

    :sswitch_3
    const/16 v0, -0x32d2

    goto :goto_0

    :sswitch_4
    const/16 v0, -0x32e7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x199 -> :sswitch_4
    .end sparse-switch
.end method

.method public static fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/StorageException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/google/firebase/storage/StorageException;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    return-object v0
.end method

.method public static fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Lcom/google/firebase/storage/StorageException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/storage/StorageException;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_2

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/firebase/storage/StorageException;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/storage/StorageException;-><init>(Ljava/lang/Throwable;I)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcov:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcov:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->mErrorCode:I

    return v0
.end method

.method public getHttpResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageException;->zzcot:I

    return v0
.end method

.method public getIsRecoverableException()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x32e6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageException;->zzcou:Ljava/lang/String;

    return-object v0
.end method
