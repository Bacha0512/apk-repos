.class Lcom/digits/sdk/android/z;
.super Lcom/digits/sdk/android/as;


# static fields
.field static final a:Lcom/digits/sdk/android/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/digits/sdk/android/z;

    invoke-direct {v0}, Lcom/digits/sdk/android/z;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/z;->a:Lcom/digits/sdk/android/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/as;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UnclassifiedFailures"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "PhoneNumberInvalid"

    goto :goto_0

    :sswitch_1
    const-string v0, "CarrierNotSupported"

    goto :goto_0

    :sswitch_2
    const-string v0, "RateLimited"

    goto :goto_0

    :sswitch_3
    const-string v0, "RateLimited"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0xf5 -> :sswitch_3
        0x11e -> :sswitch_1
        0x12b -> :sswitch_2
    .end sparse-switch
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const-string v0, "UnclassifiedFailures"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "CodeInvalid"

    goto :goto_0

    :sswitch_1
    const-string v0, "CodeInvalid"

    goto :goto_0

    :sswitch_2
    const-string v0, "RateLimited"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x58 -> :sswitch_2
        0xec -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/digits/sdk/android/a/e;)V
    .locals 4

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Contact-Uploads"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Number of Contacts"

    iget v3, p1, Lcom/digits/sdk/android/a/e;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/f;)V
    .locals 8

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Login-Start"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Language"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Country"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Elapsed time in seconds"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/g;)V
    .locals 8

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->d:Lcom/digits/sdk/android/at;

    invoke-virtual {v0}, Lcom/digits/sdk/android/at;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/z;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v1

    new-instance v2, Lcom/a/a/a/a/c;

    const-string v3, "Digits-Phone-Number-Submit-Result"

    invoke-direct {v2, v3}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v3, "Language"

    iget-object v4, p1, Lcom/digits/sdk/android/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v2

    const-string v3, "Country"

    iget-object v4, p1, Lcom/digits/sdk/android/a/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v2

    const-string v3, "Elapsed time in seconds"

    iget-object v4, p1, Lcom/digits/sdk/android/a/g;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v2

    const-string v3, "Result"

    invoke-virtual {v2, v3, v0}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/j;)V
    .locals 3

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Invite-Sent"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/a/k;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/digits/sdk/android/a/k;->a:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v1

    new-instance v2, Lcom/a/a/a/a/c;

    const-string v3, "Digits-Invite-Converted"

    invoke-direct {v2, v3}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/digits/sdk/android/a/f;)V
    .locals 8

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Phone-Number-Submit"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Language"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Country"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Elapsed time in seconds"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public b(Lcom/digits/sdk/android/a/g;)V
    .locals 8

    iget-object v0, p1, Lcom/digits/sdk/android/a/g;->d:Lcom/digits/sdk/android/at;

    invoke-virtual {v0}, Lcom/digits/sdk/android/at;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/digits/sdk/android/z;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v1

    new-instance v2, Lcom/a/a/a/a/c;

    const-string v3, "Digits-Confirmation-Code-Submit-Result"

    invoke-direct {v2, v3}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v3, "Language"

    iget-object v4, p1, Lcom/digits/sdk/android/a/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v2

    const-string v3, "Country"

    iget-object v4, p1, Lcom/digits/sdk/android/a/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v2

    const-string v3, "Elapsed time in seconds"

    iget-object v4, p1, Lcom/digits/sdk/android/a/g;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v2

    const-string v3, "Result"

    invoke-virtual {v2, v3, v0}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public c(Lcom/digits/sdk/android/a/f;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Phone-Number-Accepted"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Language"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Country"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Elapsed time in seconds"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Phone-Number-Submit-Result"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Language"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Country"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Elapsed time in seconds"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Result"

    const-string v3, "Success"

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public d(Lcom/digits/sdk/android/a/f;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Confirmation-Code-Submit"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Language"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Country"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Elapsed time in seconds"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Confirmation-Code-Submit-Result"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Language"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Country"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Elapsed time in seconds"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Result"

    const-string v3, "Success"

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method

.method public e(Lcom/digits/sdk/android/a/f;)V
    .locals 8

    invoke-static {}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/c;

    const-string v2, "Digits-Login-Success"

    invoke-direct {v1, v2}, Lcom/a/a/a/a/c;-><init>(Ljava/lang/String;)V

    const-string v2, "Language"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Country"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/c;

    move-result-object v1

    const-string v2, "Elapsed time in seconds"

    iget-object v3, p1, Lcom/digits/sdk/android/a/f;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/a/a/a/d;->a(Lcom/a/a/a/a/c;)V

    return-void
.end method
