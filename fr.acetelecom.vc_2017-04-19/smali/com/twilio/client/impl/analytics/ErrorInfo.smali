.class public Lcom/twilio/client/impl/analytics/ErrorInfo;
.super Ljava/lang/Object;


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twilio/client/impl/analytics/ErrorInfo;->errorCode:I

    iput-object p2, p0, Lcom/twilio/client/impl/analytics/ErrorInfo;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/ErrorInfo;->errorCode:I

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/ErrorInfo;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
