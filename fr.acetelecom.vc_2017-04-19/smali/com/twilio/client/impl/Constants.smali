.class public abstract Lcom/twilio/client/impl/Constants;
.super Ljava/lang/Object;


# static fields
.field public static ALLOW_CONTACT_REWRITE_ENABLE:Z = false

.field public static final CLIENT_VERSION:I = 0x2

.field private static final KEY_CHUNDER_HOST:Ljava/lang/String; = "chunder"

.field private static final KEY_CHUNDER_PORT:Ljava/lang/String; = "chunder-port"

.field private static final KEY_KIBANA_EVENT_GATEWAY_HOST_URL:Ljava/lang/String; = "kibana-event-gateway-host"

.field private static final KEY_KIBANA_METRICS_HOST_URL:Ljava/lang/String; = "kibana-metrics-host"

.field private static final KEY_MATRIX_HOST:Ljava/lang/String; = "matrix"

.field public static REGISTER_ON_ACCT_ADD_ENABLE:Z = false

.field public static REGISTER_REFRESH_MARGIN:I = 0x0

.field public static REGISTER_RETRY_INTERVAL:I = 0x0

.field public static REGISTER_TIMEOUT:I = 0x0

.field public static final SESSION_EXPIRES_SECONDS:I = 0x3840

.field private static final TWILIO_DEFAULT_CHUNDER_HOST:Ljava/lang/String; = "chunderm.gll.twilio.com"

.field private static final TWILIO_DEFAULT_CHUNDER_PORT:Ljava/lang/String; = "10193"

.field private static final TWILIO_DEFAULT_CHUNDER_PORT_TLS:Ljava/lang/String; = "10194"

.field private static final TWILIO_DEFAULT_KIBANA_EVENT_GATEWAY_HOST_URL:Ljava/lang/String; = "https://eventgw.twilio.com/v2/EndpointEvents"

.field private static final TWILIO_DEFAULT_KIBANA_METRICS_HOST_URL:Ljava/lang/String; = "https://eventgw.twilio.com/v2/EndpointMetrics"

.field private static final TWILIO_DEFAULT_MATRIX_HOST:Ljava/lang/String; = "matrix.twilio.com"

.field public static final TWILIO_DEFAULT_SIP_PASSWORD:Ljava/lang/String; = "none"

.field public static final TWILIO_DEFAULT_SIP_USERNAME:Ljava/lang/String; = "twilio"

.field private static final TWILIO_DEV_CERT_CN:Ljava/lang/String; = "*.dev.twilio.com"

.field private static final TWILIO_INTEGRATION_CERT_CN:Ljava/lang/String; = "*.integration.twilio.com"

.field public static final TWILIO_MATRIX_API_STRING:Ljava/lang/String; = "2012-02-09"

.field private static final TWILIO_PROD_CERT_CN:Ljava/lang/String; = "*.twilio.com"

.field private static final TWILIO_STAGE_CERT_CN:Ljava/lang/String; = "*.stage.twilio.com"

.field public static volatile clientString:Ljava/lang/String; = null

.field public static final clientStringLock:Ljava/lang/Object;

.field public static final dev:Z = true

.field private static params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/Constants;->clientStringLock:Ljava/lang/Object;

    const/16 v0, 0x64

    sput v0, Lcom/twilio/client/impl/Constants;->REGISTER_TIMEOUT:I

    const/16 v0, 0x14

    sput v0, Lcom/twilio/client/impl/Constants;->REGISTER_REFRESH_MARGIN:I

    const/16 v0, 0x2d

    sput v0, Lcom/twilio/client/impl/Constants;->REGISTER_RETRY_INTERVAL:I

    sput-boolean v1, Lcom/twilio/client/impl/Constants;->REGISTER_ON_ACCT_ADD_ENABLE:Z

    sput-boolean v1, Lcom/twilio/client/impl/Constants;->ALLOW_CONTACT_REWRITE_ENABLE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMatrixUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/twilio/client/impl/Constants;->buildMatrixUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildMatrixUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getRegisterHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2012-02-09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?AccessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    const-string v3, "&feature="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/EventStream$Feature;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCallControlHost()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "chunder"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "chunder"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "chunderm.gll.twilio.com"

    goto :goto_0
.end method

.method public static final getCallControlPort(Z)I
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "chunder-port"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "chunder-port"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "10194"

    goto :goto_0

    :cond_1
    const-string v0, "10193"

    goto :goto_0
.end method

.method public static getClientProtoVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getClientString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/twilio/client/impl/Constants;->clientString:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v2, Lcom/twilio/client/impl/Constants;->clientStringLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/Constants;->clientString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "UNKNOWN"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "com.twilio.client.Version"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "SDK_VERSION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "p"

    const-string v4, "android"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "v"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "product"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "arch"

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "v"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mobile"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/Constants;->clientString:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/Constants;->clientString:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static final getKeyKibanaEventGatewayHostUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "kibana-event-gateway-host"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "kibana-event-gateway-host"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://eventgw.twilio.com/v2/EndpointEvents"

    goto :goto_0
.end method

.method public static final getKeyKibanaMetricsHostUrl()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "kibana-metrics-host"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "kibana-metrics-host"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://eventgw.twilio.com/v2/EndpointMetrics"

    goto :goto_0
.end method

.method public static final getRegisterCommonNames()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getRegisterHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matrix.twilio.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".prod.twilio.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*.twilio.com"

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_1
    const-string v1, ".stage.twilio.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*.stage.twilio.com"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_2
    const-string v1, ".dev.twilio.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*.dev.twilio.com"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_3
    const-string v1, ".integration.twilio.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*.twilio.com"

    aput-object v1, v0, v2

    const-string v1, "*.integration.twilio.com"

    aput-object v1, v0, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getRegisterHost()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "matrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    const-string v1, "matrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "matrix.twilio.com"

    goto :goto_0
.end method

.method private static final setDevParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/Constants;->params:Ljava/util/Map;

    return-void
.end method
