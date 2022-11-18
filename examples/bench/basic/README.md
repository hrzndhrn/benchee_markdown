Benchmark Example

Benchmark run from 2022-11-18 15:22:20.915093Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>macOS</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Apple M1</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">16 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.14.1</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">25.1.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">10 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">20 ms</td>
  </tr>
</table>

## Statistics



__Input: long_list__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">2.59 K</td>
    <td style="white-space: nowrap; text-align: right">386.13 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;81.99%</td>
    <td style="white-space: nowrap; text-align: right">249.25 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">1294.67 &micro;s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">446.12 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;34.33%</td>
    <td style="white-space: nowrap; text-align: right">389.54 &micro;s</td>
    <td style="white-space: nowrap; text-align: right">900.29 &micro;s</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap;text-align: right">2.59 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">2.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">625 KB</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">781.25 KB</td>
    <td>1.25x</td>
  </tr>
</table>



__Input: short_list__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap; text-align: right">7.94 M</td>
    <td style="white-space: nowrap; text-align: right">126.01 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;47.04%</td>
    <td style="white-space: nowrap; text-align: right">120.90 ns</td>
    <td style="white-space: nowrap; text-align: right">145.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">7.44 M</td>
    <td style="white-space: nowrap; text-align: right">134.46 ns</td>
    <td style="white-space: nowrap; text-align: right">&plusmn;43.20%</td>
    <td style="white-space: nowrap; text-align: right">125 ns</td>
    <td style="white-space: nowrap; text-align: right">187.50 ns</td>
  </tr>

</table>


Run Time Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap;text-align: right">7.94 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap; text-align: right">7.44 M</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">flat_map</td>
    <td style="white-space: nowrap">640 B</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
    <td style="white-space: nowrap">map.flatten</td>
    <td style="white-space: nowrap">800 B</td>
    <td>1.25x</td>
  </tr>
</table>