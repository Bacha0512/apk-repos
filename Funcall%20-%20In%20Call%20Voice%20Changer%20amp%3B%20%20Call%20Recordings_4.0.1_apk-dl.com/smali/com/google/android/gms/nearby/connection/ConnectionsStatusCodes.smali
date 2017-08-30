.class public final Lcom/google/android/gms/nearby/connection/ConnectionsStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final API_CONNECTION_FAILED_ALREADY_IN_USE:I = 0x1f72

.field public static final MISSING_PERMISSION_ACCESS_COARSE_LOCATION:I = 0x1f62

.field public static final MISSING_PERMISSION_ACCESS_WIFI_STATE:I = 0x1f60

.field public static final MISSING_PERMISSION_BLUETOOTH:I = 0x1f5e

.field public static final MISSING_PERMISSION_BLUETOOTH_ADMIN:I = 0x1f5f

.field public static final MISSING_PERMISSION_CHANGE_WIFI_STATE:I = 0x1f61

.field public static final MISSING_PERMISSION_RECORD_AUDIO:I = 0x1f63

.field public static final MISSING_SETTING_LOCATION_MUST_BE_ON:I = 0x1f59

.field public static final STATUS_ALREADY_ADVERTISING:I = 0x1f41

.field public static final STATUS_ALREADY_CONNECTED_TO_ENDPOINT:I = 0x1f43

.field public static final STATUS_ALREADY_DISCOVERING:I = 0x1f42

.field public static final STATUS_ALREADY_HAVE_ACTIVE_STRATEGY:I = 0x1f48

.field public static final STATUS_BLUETOOTH_ERROR:I = 0x1f47

.field public static final STATUS_CONNECTION_REJECTED:I = 0x1f44

.field public static final STATUS_ENDPOINT_IO_ERROR:I = 0x1f4c

.field public static final STATUS_ENDPOINT_UNKNOWN:I = 0x1f4b

.field public static final STATUS_ERROR:I = 0xd

.field public static final STATUS_NETWORK_NOT_CONNECTED:I = 0x1f40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_NOT_CONNECTED_TO_ENDPOINT:I = 0x1f45

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OUT_OF_ORDER_API_CALL:I = 0x1f49

.field public static final STATUS_PAYLOAD_IO_ERROR:I = 0x1f4d


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "STATUS_NETWORK_NOT_CONNECTED"

    goto :goto_0

    :sswitch_1
    const-string v0, "STATUS_ALREADY_ADVERTISING"

    goto :goto_0

    :sswitch_2
    const-string v0, "STATUS_ALREADY_DISCOVERING"

    goto :goto_0

    :sswitch_3
    const-string v0, "STATUS_ALREADY_CONNECTED_TO_ENDPOINT"

    goto :goto_0

    :sswitch_4
    const-string v0, "STATUS_CONNECTION_REJECTED"

    goto :goto_0

    :sswitch_5
    const-string v0, "STATUS_NOT_CONNECTED_TO_ENDPOINT"

    goto :goto_0

    :sswitch_6
    const-string v0, "STATUS_BLUETOOTH_ERROR"

    goto :goto_0

    :sswitch_7
    const-string v0, "STATUS_ALREADY_HAVE_ACTIVE_STRATEGY"

    goto :goto_0

    :sswitch_8
    const-string v0, "STATUS_OUT_OF_ORDER_API_CALL"

    goto :goto_0

    :sswitch_9
    const-string v0, "STATUS_UNSUPPORTED_PAYLOAD_TYPE_FOR_STRATEGY"

    goto :goto_0

    :sswitch_a
    const-string v0, "STATUS_ENDPOINT_UNKNOWN"

    goto :goto_0

    :sswitch_b
    const-string v0, "STATUS_ENDPOINT_IO_ERROR"

    goto :goto_0

    :sswitch_c
    const-string v0, "STATUS_PAYLOAD_IO_ERROR"

    goto :goto_0

    :sswitch_d
    const-string v0, "MISSING_SETTING_LOCATION_MUST_BE_ON"

    goto :goto_0

    :sswitch_e
    const-string v0, "MISSING_PERMISSION_BLUETOOTH"

    goto :goto_0

    :sswitch_f
    const-string v0, "MISSING_PERMISSION_BLUETOOTH_ADMIN"

    goto :goto_0

    :sswitch_10
    const-string v0, "MISSING_PERMISSION_ACCESS_WIFI_STATE"

    goto :goto_0

    :sswitch_11
    const-string v0, "MISSING_PERMISSION_CHANGE_WIFI_STATE"

    goto :goto_0

    :sswitch_12
    const-string v0, "MISSING_PERMISSION_ACCESS_COARSE_LOCATION"

    goto :goto_0

    :sswitch_13
    const-string v0, "API_CONNECTION_FAILED_ALREADY_IN_USE"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_0
        0x1f41 -> :sswitch_1
        0x1f42 -> :sswitch_2
        0x1f43 -> :sswitch_3
        0x1f44 -> :sswitch_4
        0x1f45 -> :sswitch_5
        0x1f47 -> :sswitch_6
        0x1f48 -> :sswitch_7
        0x1f49 -> :sswitch_8
        0x1f4a -> :sswitch_9
        0x1f4b -> :sswitch_a
        0x1f4c -> :sswitch_b
        0x1f4d -> :sswitch_c
        0x1f59 -> :sswitch_d
        0x1f5e -> :sswitch_e
        0x1f5f -> :sswitch_f
        0x1f60 -> :sswitch_10
        0x1f61 -> :sswitch_11
        0x1f62 -> :sswitch_12
        0x1f72 -> :sswitch_13
    .end sparse-switch
.end method
