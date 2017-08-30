.class public Lcom/weirdvoice/toolbox/Dialing;
.super Ljava/lang/Object;
.source "Dialing.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Dialing"

.field private static udb:Lcom/weirdvoice/toolbox/UpdateDB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctDialedNumber(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialedNum"    # Ljava/lang/String;
    .param p2, "countryAreaCode"    # [[Ljava/lang/String;

    .prologue
    .line 39
    const-string v2, "Dialing"

    const-string v5, "correctDialedNumber()"

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    move-object/from16 v14, p1

    .line 43
    .local v14, "corrNum":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/weirdvoice/toolbox/UpdateDB;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    .line 45
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 46
    .local v24, "sp":Landroid/content/SharedPreferences;
    const-string v2, "isoctry"

    const-string v5, ""

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 47
    .local v27, "userCtryIso":Ljava/lang/String;
    sget-object v2, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    const-string v3, "countryDial"

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "telephonyCode"

    aput-object v8, v4, v5

    const-string v5, "ISOCode=?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v27, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 50
    .local v26, "userCtryCode":Ljava/lang/String;
    const-string v2, "0"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/weirdvoice/toolbox/Dialing;->getCorrNumFromExceptions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 53
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    const-string v19, "-1"

    .line 55
    .local v19, "ctryCode":Ljava/lang/String;
    const/16 v23, 0x0

    .line 57
    .local v23, "isInternat":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "content://"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/countryDialInternational"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "COUNTRYDIAL_INTERNATIONAL_URI_S":Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 59
    .local v3, "ctryDialInternatUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "IDD"

    aput-object v5, v4, v2

    .line 60
    .local v4, "ctrDialInternatCol":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "telephonyCode=?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v26, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 61
    .local v15, "ctrDialInternatCurs":Landroid/database/Cursor;
    if-eqz v15, :cond_0

    .line 62
    sget-object v2, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {v2, v15, v4}, Lcom/weirdvoice/toolbox/UpdateDB;->getDataFromCursor(Landroid/database/Cursor;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v16

    .line 63
    .local v16, "ctrDialInternatTab":[[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_0

    .line 64
    const-string v22, ""

    .line 65
    .local v22, "internatToRmv":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v5, :cond_3

    .line 77
    .end local v16    # "ctrDialInternatTab":[[Ljava/lang/String;
    .end local v22    # "internatToRmv":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v23, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "content://"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/countryDialNational"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, "COUNTRYDIAL_NATIONAL_URI_S":Ljava/lang/String;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 80
    .local v6, "ctryDialNatUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "NDD"

    aput-object v5, v7, v2

    .line 81
    .local v7, "ctrDialNatCol":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "telephonyCode=?"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v26, v9, v2

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 82
    .local v17, "ctrDialNatCurs":Landroid/database/Cursor;
    if-eqz v17, :cond_1

    .line 83
    sget-object v2, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7}, Lcom/weirdvoice/toolbox/UpdateDB;->getDataFromCursor(Landroid/database/Cursor;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "ctrDialNatTab":[[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    if-lez v2, :cond_1

    .line 85
    const-string v13, ""

    .line 87
    .local v13, "NatToRmv":Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_5

    .line 98
    .end local v6    # "ctryDialNatUri":Landroid/net/Uri;
    .end local v7    # "ctrDialNatCol":[Ljava/lang/String;
    .end local v12    # "COUNTRYDIAL_NATIONAL_URI_S":Ljava/lang/String;
    .end local v13    # "NatToRmv":Ljava/lang/String;
    .end local v17    # "ctrDialNatCurs":Landroid/database/Cursor;
    .end local v18    # "ctrDialNatTab":[[Ljava/lang/String;
    :cond_1
    :goto_3
    const-string v2, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 100
    move-object/from16 v25, p1

    .line 101
    .local v25, "tempNum":Ljava/lang/String;
    :goto_4
    const-string v2, "0"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 104
    sget-object v2, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Lcom/weirdvoice/toolbox/UpdateDB;->getCountryAreaCode([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 106
    const-string v2, "-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 107
    const-string v2, "Dialing"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "corrected number is also invalid: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v14, p1

    .line 123
    .end local v3    # "ctryDialInternatUri":Landroid/net/Uri;
    .end local v4    # "ctrDialInternatCol":[Ljava/lang/String;
    .end local v11    # "COUNTRYDIAL_INTERNATIONAL_URI_S":Ljava/lang/String;
    .end local v15    # "ctrDialInternatCurs":Landroid/database/Cursor;
    .end local v19    # "ctryCode":Ljava/lang/String;
    .end local v23    # "isInternat":Z
    .end local v24    # "sp":Landroid/content/SharedPreferences;
    .end local v25    # "tempNum":Ljava/lang/String;
    .end local v26    # "userCtryCode":Ljava/lang/String;
    .end local v27    # "userCtryIso":Ljava/lang/String;
    :cond_2
    :goto_5
    return-object v14

    .line 65
    .restart local v3    # "ctryDialInternatUri":Landroid/net/Uri;
    .restart local v4    # "ctrDialInternatCol":[Ljava/lang/String;
    .restart local v11    # "COUNTRYDIAL_INTERNATIONAL_URI_S":Ljava/lang/String;
    .restart local v15    # "ctrDialInternatCurs":Landroid/database/Cursor;
    .restart local v16    # "ctrDialInternatTab":[[Ljava/lang/String;
    .restart local v19    # "ctryCode":Ljava/lang/String;
    .restart local v22    # "internatToRmv":Ljava/lang/String;
    .restart local v23    # "isInternat":Z
    .restart local v24    # "sp":Landroid/content/SharedPreferences;
    .restart local v26    # "userCtryCode":Ljava/lang/String;
    .restart local v27    # "userCtryIso":Ljava/lang/String;
    :cond_3
    aget-object v21, v16, v2

    .line 66
    .local v21, "element":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v9, v21, v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 67
    const/16 v23, 0x1

    .line 68
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    .line 69
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 70
    sget-object v2, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Lcom/weirdvoice/toolbox/UpdateDB;->getCountryAreaCode([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 71
    goto/16 :goto_1

    .line 65
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 87
    .end local v16    # "ctrDialInternatTab":[[Ljava/lang/String;
    .end local v21    # "element":[Ljava/lang/String;
    .end local v22    # "internatToRmv":Ljava/lang/String;
    .restart local v6    # "ctryDialNatUri":Landroid/net/Uri;
    .restart local v7    # "ctrDialNatCol":[Ljava/lang/String;
    .restart local v12    # "COUNTRYDIAL_NATIONAL_URI_S":Ljava/lang/String;
    .restart local v13    # "NatToRmv":Ljava/lang/String;
    .restart local v17    # "ctrDialNatCurs":Landroid/database/Cursor;
    .restart local v18    # "ctrDialNatTab":[[Ljava/lang/String;
    :cond_5
    aget-object v21, v18, v2

    .line 88
    .restart local v21    # "element":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v9, v21, v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 89
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 90
    move-object/from16 v19, v26

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 92
    goto/16 :goto_3

    .line 87
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 102
    .end local v6    # "ctryDialNatUri":Landroid/net/Uri;
    .end local v7    # "ctrDialNatCol":[Ljava/lang/String;
    .end local v12    # "COUNTRYDIAL_NATIONAL_URI_S":Ljava/lang/String;
    .end local v13    # "NatToRmv":Ljava/lang/String;
    .end local v17    # "ctrDialNatCurs":Landroid/database/Cursor;
    .end local v18    # "ctrDialNatTab":[[Ljava/lang/String;
    .end local v21    # "element":[Ljava/lang/String;
    .restart local v25    # "tempNum":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_4

    .line 110
    :cond_8
    move-object/from16 v14, v25

    .line 113
    goto/16 :goto_5

    .line 114
    .end local v25    # "tempNum":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/weirdvoice/toolbox/Dialing;->isZeroNationalOnly(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    move-object/from16 v0, v19

    invoke-static {v14, v0}, Lcom/weirdvoice/toolbox/Dialing;->removeExtraZeros(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 119
    .end local v3    # "ctryDialInternatUri":Landroid/net/Uri;
    .end local v4    # "ctrDialInternatCol":[Ljava/lang/String;
    .end local v11    # "COUNTRYDIAL_INTERNATIONAL_URI_S":Ljava/lang/String;
    .end local v15    # "ctrDialInternatCurs":Landroid/database/Cursor;
    .end local v19    # "ctryCode":Ljava/lang/String;
    .end local v23    # "isInternat":Z
    .end local v24    # "sp":Landroid/content/SharedPreferences;
    .end local v26    # "userCtryCode":Ljava/lang/String;
    .end local v27    # "userCtryIso":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 120
    .local v20, "e":Ljava/lang/Exception;
    move-object/from16 v14, p1

    goto/16 :goto_5
.end method

.method private static getCorrNumFromExceptions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialedNum"    # Ljava/lang/String;
    .param p1, "userCtryCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 168
    const-string v1, "Dialing"

    const-string v2, "getCorrNumFromExceptions()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object v0, p0

    .line 171
    .local v0, "corrNum":Ljava/lang/String;
    const-string v1, "254"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "255"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    :cond_0
    const-string v1, "005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "006"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    :cond_1
    const-string v1, "005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string v1, "254"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "254"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_2
    :goto_0
    return-object v0

    .line 177
    :cond_3
    const-string v1, "006"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "256"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "255"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "255"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    goto :goto_0

    :cond_5
    const-string v1, "378"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "39"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    :cond_6
    const-string v1, "0549"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "378"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    goto :goto_0

    :cond_7
    const-string v1, "65"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "020"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "60"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    goto/16 :goto_0

    :cond_8
    const-string v1, "60"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "65"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    goto/16 :goto_0

    :cond_9
    const-string v1, "56"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_a

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 195
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 197
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    goto/16 :goto_0

    :cond_b
    const-string v1, "358"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "99"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static isZeroNationalOnly(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dialedCountryCode"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "Dialing"

    const-string v1, "isZeroNationalOnly()"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v7, 0x0

    .line 135
    .local v7, "isZero":Z
    :try_start_0
    new-instance v0, Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-direct {v0, p0}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    .line 136
    sget-object v0, Lcom/weirdvoice/toolbox/Dialing;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    const-string v1, "countryDial"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "isZeroNationalOnly"

    aput-object v4, v2, v3

    const-string v3, "telephonyCode=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v7, 0x1

    .line 139
    :cond_0
    :goto_0
    return v7

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeExtraZeros(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dialedNum"    # Ljava/lang/String;
    .param p1, "ctryCode"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v2, "Dialing"

    const-string v3, "removeExtraZeros()"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object v0, p0

    .line 152
    .local v0, "newNum":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "temp":Ljava/lang/String;
    :goto_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0

    .line 154
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
