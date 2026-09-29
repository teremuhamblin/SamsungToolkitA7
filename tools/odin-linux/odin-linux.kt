/**
 * OdinLinuxTool — SamsungToolkitA7
 * Petit utilitaire CLI Kotlin pour vérifier la présence d'ADB et Heimdall.
 */

import java.io.BufferedReader
import java.io.InputStreamReader

fun exec(cmd: String): String {
    return try {
        val process = Runtime.getRuntime().exec(cmd)
        val reader = BufferedReader(InputStreamReader(process.inputStream))
        reader.readText().trim()
    } catch (e: Exception) {
        "Erreur: ${e.message}"
    }
}

fun main() {
    println("=== OdinLinuxTool — Diagnostic rapide ===")

    println("\n[*] Vérification ADB...")
    val adb = exec("adb version")
    println(adb.ifEmpty { "ADB non trouvé." })

    println("\n[*] Vérification Heimdall...")
    val heimdall = exec("heimdall version")
    println(heimdall.ifEmpty { "Heimdall non trouvé." })

    println("\n[*] Vérification connexion device...")
    val detect = exec("heimdall detect")
    println(if (detect.contains("Device detected")) "Device détecté." else "Aucun device détecté.")

    println("\n=== Fin du diagnostic ===")
}
