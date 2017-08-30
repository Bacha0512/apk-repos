.class public Lcom/digits/sdk/android/MockApiInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/digits/sdk/android/e;


# static fields
.field static final a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field static final b:Lcom/digits/sdk/android/models/f;

.field static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/digits/sdk/android/models/Invite;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Lcom/digits/sdk/android/models/Invite;

.field static final f:Lcom/digits/sdk/android/models/Invite;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const-string v1, "token"

    const-string v2, "secret"

    invoke-direct {v0, v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/digits/sdk/android/MockApiInterface;->a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    new-instance v0, Lcom/digits/sdk/android/models/f;

    const-string v1, "mock@digits.com"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/digits/sdk/android/models/f;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/digits/sdk/android/MockApiInterface;->b:Lcom/digits/sdk/android/models/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/MockApiInterface;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/digits/sdk/android/MockApiInterface;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/digits/sdk/android/models/Invite;

    const-wide/16 v2, 0x6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "+18439680333"

    sget-object v3, Lcom/digits/sdk/android/models/Invite$Status;->PENDING:Lcom/digits/sdk/android/models/Invite$Status;

    invoke-direct {v0, v1, v2, v3}, Lcom/digits/sdk/android/models/Invite;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/digits/sdk/android/models/Invite$Status;)V

    sput-object v0, Lcom/digits/sdk/android/MockApiInterface;->e:Lcom/digits/sdk/android/models/Invite;

    new-instance v0, Lcom/digits/sdk/android/models/Invite;

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "+12014398514"

    sget-object v3, Lcom/digits/sdk/android/models/Invite$Status;->PENDING:Lcom/digits/sdk/android/models/Invite$Status;

    invoke-direct {v0, v1, v2, v3}, Lcom/digits/sdk/android/models/Invite;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/digits/sdk/android/models/Invite$Status;)V

    sput-object v0, Lcom/digits/sdk/android/MockApiInterface;->f:Lcom/digits/sdk/android/models/Invite;

    sget-object v0, Lcom/digits/sdk/android/MockApiInterface;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/digits/sdk/android/MockApiInterface;->e:Lcom/digits/sdk/android/models/Invite;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/digits/sdk/android/MockApiInterface;->d:Ljava/util/ArrayList;

    sget-object v1, Lcom/digits/sdk/android/MockApiInterface;->f:Lcom/digits/sdk/android/models/Invite;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;J)Lcom/digits/sdk/android/models/b;
    .locals 5

    new-instance v0, Lcom/digits/sdk/android/models/b;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/b;-><init>()V

    iput-object p0, v0, Lcom/digits/sdk/android/models/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/digits/sdk/android/models/b;->a:Ljava/util/List;

    iget-object v1, v0, Lcom/digits/sdk/android/models/b;->a:Ljava/util/List;

    new-instance v2, Lcom/digits/sdk/android/models/DigitsUser;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Lcom/digits/sdk/android/models/DigitsUser;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static a()Lcom/digits/sdk/android/models/e;
    .locals 4

    new-instance v0, Lcom/digits/sdk/android/models/e;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/e;-><init>()V

    const-string v1, "token"

    iput-object v1, v0, Lcom/digits/sdk/android/models/e;->b:Ljava/lang/String;

    const-string v1, "secret"

    iput-object v1, v0, Lcom/digits/sdk/android/models/e;->a:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/digits/sdk/android/models/e;->d:J

    return-object v0
.end method

.method static b()Lcom/digits/sdk/android/models/k;
    .locals 4

    new-instance v0, Lcom/digits/sdk/android/models/k;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/k;-><init>()V

    sget-object v1, Lcom/digits/sdk/android/MockApiInterface;->a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object v1, v0, Lcom/digits/sdk/android/models/k;->a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/digits/sdk/android/models/k;->b:J

    sget-object v1, Lcom/digits/sdk/android/MockApiInterface;->b:Lcom/digits/sdk/android/models/f;

    iput-object v1, v0, Lcom/digits/sdk/android/models/k;->d:Lcom/digits/sdk/android/models/f;

    const-string v1, "+15556787676"

    iput-object v1, v0, Lcom/digits/sdk/android/models/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method static c()Lcom/digits/sdk/android/models/d;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/digits/sdk/android/models/d;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/d;-><init>()V

    const-string v1, "device_id"

    iput-object v1, v0, Lcom/digits/sdk/android/models/d;->a:Ljava/lang/String;

    const-string v1, "state"

    iput-object v1, v0, Lcom/digits/sdk/android/models/d;->c:Ljava/lang/String;

    new-instance v1, Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-direct {v1}, Lcom/digits/sdk/android/models/AuthConfigResponse;-><init>()V

    iput-object v1, v0, Lcom/digits/sdk/android/models/d;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    iget-object v1, v0, Lcom/digits/sdk/android/models/d;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    iput-boolean v2, v1, Lcom/digits/sdk/android/models/AuthConfigResponse;->c:Z

    iget-object v1, v0, Lcom/digits/sdk/android/models/d;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    iput-boolean v2, v1, Lcom/digits/sdk/android/models/AuthConfigResponse;->b:Z

    iget-object v1, v0, Lcom/digits/sdk/android/models/d;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/digits/sdk/android/models/AuthConfigResponse;->a:Z

    const-string v1, "+15556787676"

    iput-object v1, v0, Lcom/digits/sdk/android/models/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method static d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/digits/sdk/android/models/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    const-string v2, "cursor"

    const-wide/16 v4, 0x2

    invoke-static {v2, v4, v5}, Lcom/digits/sdk/android/MockApiInterface;->a(Ljava/lang/String;J)Lcom/digits/sdk/android/models/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cursor"

    const/4 v2, 0x0

    const-wide/16 v4, 0x3

    invoke-static {v2, v4, v5}, Lcom/digits/sdk/android/MockApiInterface;->a(Ljava/lang/String;J)Lcom/digits/sdk/android/models/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static e()Lcom/digits/sdk/android/aw;
    .locals 6

    new-instance v0, Lcom/digits/sdk/android/aw;

    sget-object v1, Lcom/digits/sdk/android/MockApiInterface;->a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const-wide/16 v2, 0x1

    const-string v4, "+15556787676"

    sget-object v5, Lcom/digits/sdk/android/MockApiInterface;->b:Lcom/digits/sdk/android/models/f;

    invoke-direct/range {v0 .. v5}, Lcom/digits/sdk/android/aw;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;Lcom/digits/sdk/android/models/f;)V

    return-object v0
.end method


# virtual methods
.method public account(Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "phone_number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "numeric_pin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/DigitsUser;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/models/DigitsUser;

    const-wide/16 v2, 0x1

    const-string v1, "1"

    invoke-direct {v0, v2, v3, v1}, Lcom/digits/sdk/android/models/DigitsUser;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "x_auth_phone_number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "verification_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "lang"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/models/a;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/a;-><init>()V

    new-instance v1, Lcom/digits/sdk/android/models/AuthConfigResponse;

    invoke-direct {v1}, Lcom/digits/sdk/android/models/AuthConfigResponse;-><init>()V

    iput-object v1, v0, Lcom/digits/sdk/android/models/a;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    iget-object v1, v0, Lcom/digits/sdk/android/models/a;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/digits/sdk/android/models/AuthConfigResponse;->b:Z

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll()Ld/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation

    const-string v0, "application/json"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lb/ac;->a(Lb/u;Ljava/lang/String;)Lb/ac;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public email(Ljava/lang/String;)Ld/b;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "email_address"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;"
        }
    .end annotation

    const-string v0, "application/json"

    invoke-static {v0}, Lb/u;->a(Ljava/lang/String;)Lb/u;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lb/ac;->a(Lb/u;Ljava/lang/String;)Lb/ac;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public getContactsMatchesAsPhoneNumbers(Ljava/lang/String;Ljava/lang/Integer;)Ld/b;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/s;
            a = "cursor"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ld/b/s;
            a = "count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/b;",
            ">;"
        }
    .end annotation

    const-wide/16 v8, 0x3

    const-wide/16 v6, 0x2

    new-instance v0, Lcom/digits/sdk/android/models/b;

    invoke-direct {v0}, Lcom/digits/sdk/android/models/b;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/digits/sdk/android/models/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/digits/sdk/android/models/b;->a:Ljava/util/List;

    iget-object v1, v0, Lcom/digits/sdk/android/models/b;->a:Ljava/util/List;

    new-instance v2, Lcom/digits/sdk/android/models/DigitsUser;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+12014398514"

    invoke-direct {v2, v6, v7, v3, v4}, Lcom/digits/sdk/android/models/DigitsUser;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/digits/sdk/android/models/b;->a:Ljava/util/List;

    new-instance v2, Lcom/digits/sdk/android/models/DigitsUser;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+19167940594"

    invoke-direct {v2, v8, v9, v3, v4}, Lcom/digits/sdk/android/models/DigitsUser;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public getInvites(ZZ)Ld/b;
    .locals 2
    .param p1    # Z
        .annotation runtime Ld/b/s;
            a = "to_me"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Ld/b/s;
            a = "pending_only"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/models/g;

    sget-object v1, Lcom/digits/sdk/android/MockApiInterface;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/models/g;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public joinNotify()Ld/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/models/g;

    sget-object v1, Lcom/digits/sdk/android/MockApiInterface;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/models/g;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;JLjava/lang/String;)Ld/b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "login_verification_request_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Ld/b/c;
            a = "login_verification_user_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "login_verification_challenge_response"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/digits/sdk/android/MockApiInterface;->a()Lcom/digits/sdk/android/models/e;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public recordInvite(Lcom/digits/sdk/android/models/c;)Ld/b;
    .locals 3
    .param p1    # Lcom/digits/sdk/android/models/c;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/models/c;",
            ")",
            "Ld/b",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ld/b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "raw_phone_number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "text_key"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Ld/b/c;
            a = "send_numeric_pin"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "lang"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "client_identifier_string"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "verification_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/d;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/digits/sdk/android/MockApiInterface;->c()Lcom/digits/sdk/android/models/d;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public upload(Lcom/digits/sdk/android/models/j;)Ld/b;
    .locals 2
    .param p1    # Lcom/digits/sdk/android/models/j;
        .annotation runtime Ld/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/models/j;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/digits/sdk/android/models/i;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/models/i;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public usersAndUploadedBy(Ljava/lang/String;Ljava/lang/Integer;)Ld/b;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/s;
            a = "cursor"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ld/b/s;
            a = "count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/b;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/digits/sdk/android/MockApiInterface;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/b;

    :goto_0
    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/digits/sdk/android/MockApiInterface;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/models/b;

    goto :goto_0
.end method

.method public verifyAccount()Ld/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/k;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/digits/sdk/android/MockApiInterface;->b()Lcom/digits/sdk/android/models/k;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method

.method public verifyPin(Ljava/lang/String;JLjava/lang/String;)Ld/b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "login_verification_request_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Ld/b/c;
            a = "login_verification_user_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ld/b/c;
            a = "pin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ld/b",
            "<",
            "Lcom/digits/sdk/android/models/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/digits/sdk/android/MockApiInterface;->a()Lcom/digits/sdk/android/models/e;

    move-result-object v0

    invoke-static {v0}, Ld/l;->a(Ljava/lang/Object;)Ld/l;

    move-result-object v0

    invoke-static {v0}, Ld/c/a;->a(Ld/l;)Ld/b;

    move-result-object v0

    return-object v0
.end method
