.class public Lcom/twilio/client/impl/session/SessionException;
.super Ljava/lang/Exception;


# static fields
.field public static final PJ_EINVAL:I = 0x11174

.field public static final PJ_ENOTFOUND:I = 0x11176

.field private static final PJ_ERRNO_START_STATUS:I = 0x11170

.field public static final PJ_ETIMEDOUT:I = 0x11179

.field public static final PJ_EUNKNOWN:I = 0x11171

.field public static final PJ_SUCCESS:I = 0x0

.field private static final serialVersionUID:J = -0x2bb5419222e5f88eL


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Unknown session error"

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/session/SessionException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const v0, 0x11171

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/session/SessionException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const v0, 0x11171

    iput v0, p0, Lcom/twilio/client/impl/session/SessionException;->statusCode:I

    iput p2, p0, Lcom/twilio/client/impl/session/SessionException;->statusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/session/SessionException;->statusCode:I

    return v0
.end method
