.class public Lcom/twilio/client/impl/session/Account$RegistrationInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegistrationInfo"
.end annotation


# instance fields
.field public final code:I

.field public final contactCount:I

.field public final expiration:I

.field public final success:Z

.field public final transport:Lcom/twilio/client/impl/session/Transport;


# direct methods
.method private constructor <init>(ZIIILcom/twilio/client/impl/session/Transport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->success:Z

    iput p2, p0, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->code:I

    iput p3, p0, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->expiration:I

    iput p4, p0, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->contactCount:I

    iput-object p5, p0, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->transport:Lcom/twilio/client/impl/session/Transport;

    return-void
.end method
