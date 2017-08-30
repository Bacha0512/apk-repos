.class public Lcom/twilio/client/impl/SendDigitsCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/SendDigitsCommand$Digit;
    }
.end annotation


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;

.field private static final toneGen:Landroid/media/ToneGenerator;


# instance fields
.field connection:Lcom/twilio/client/impl/InternalConnection;

.field digits:Ljava/lang/String;

.field isTesting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/twilio/client/impl/SendDigitsCommand;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v0, Lcom/twilio/client/impl/SendDigitsCommand;->toneGen:Landroid/media/ToneGenerator;

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/SendDigitsCommand;-><init>(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/SendDigitsCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    iput-object v0, p0, Lcom/twilio/client/impl/SendDigitsCommand;->digits:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/SendDigitsCommand;->isTesting:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must be non-null when sending digits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/twilio/client/impl/InternalConnection;->getCallHandle()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CallHandle must be non-null when sending digits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digits string must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "^[0-9\\*\\#w]+$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digits string must only contain 0-9, *, or # characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/twilio/client/impl/SendDigitsCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    iput-object p2, p0, Lcom/twilio/client/impl/SendDigitsCommand;->digits:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/twilio/client/impl/SendDigitsCommand;->isTesting:Z

    return-void
.end method

.method private parseDigits(Ljava/lang/String;)[Lcom/twilio/client/impl/SendDigitsCommand$Digit;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    new-array v0, v0, [Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-char v3, v2, v1

    sparse-switch v3, :sswitch_data_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_0
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D0:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_1
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D1:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_2
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D2:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_3
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D3:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_4
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D4:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_5
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D5:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_6
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D6:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_7
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D7:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_8
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D8:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_9
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->D9:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_a
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->POUND:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_b
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->STAR:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :sswitch_c
    sget-object v3, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->WAIT:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    aput-object v3, v0, v1

    goto :goto_2

    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_a
        0x2a -> :sswitch_b
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x77 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/twilio/client/impl/SendDigitsCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->getCallHandle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Call;

    :try_start_0
    sget-object v1, Lcom/twilio/client/impl/SendDigitsCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending digits before parseDigits "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twilio/client/impl/SendDigitsCommand;->digits:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twilio/client/impl/SendDigitsCommand;->digits:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/twilio/client/impl/SendDigitsCommand;->parseDigits(Ljava/lang/String;)[Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->WAIT:Lcom/twilio/client/impl/SendDigitsCommand$Digit;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/twilio/client/impl/SendDigitsCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dialing DTMF "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->digitStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->digitStr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/twilio/client/impl/useragent/Call;->dialDTMF(Ljava/lang/String;)V

    sget-object v5, Lcom/twilio/client/impl/SendDigitsCommand;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DTMF ToneType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->toneType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/twilio/client/impl/SendDigitsCommand;->toneGen:Landroid/media/ToneGenerator;

    iget v4, v4, Lcom/twilio/client/impl/SendDigitsCommand$Digit;->toneType:I

    invoke-virtual {v5, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-boolean v4, p0, Lcom/twilio/client/impl/SendDigitsCommand;->isTesting:Z
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    :try_start_2
    sget-object v4, Lcom/twilio/client/impl/SendDigitsCommand;->toneGen:Landroid/media/ToneGenerator;

    invoke-virtual {v4}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    return-void

    :cond_4
    iget-boolean v4, p0, Lcom/twilio/client/impl/SendDigitsCommand;->isTesting:Z
    :try_end_2
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v4, :cond_0

    const-wide/16 v4, 0x1f4

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_2
.end method
