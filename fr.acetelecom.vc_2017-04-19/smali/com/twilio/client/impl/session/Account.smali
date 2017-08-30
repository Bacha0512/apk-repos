.class public Lcom/twilio/client/impl/session/Account;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/session/Account$RegistrationInfo;
    }
.end annotation


# instance fields
.field private accountId:I

.field private device:Lcom/twilio/client/impl/DeviceImpl;

.field private isDefault:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/session/Account;->accountId:I

    return v0
.end method

.method public getDevice()Lcom/twilio/client/impl/DeviceImpl;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Account;->device:Lcom/twilio/client/impl/DeviceImpl;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/session/Account;->isDefault:Z

    return v0
.end method

.method public setDevice(Lcom/twilio/client/impl/DeviceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/session/Account;->device:Lcom/twilio/client/impl/DeviceImpl;

    return-void
.end method
